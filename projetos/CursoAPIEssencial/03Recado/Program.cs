using _03Recado;
using _03Recado.BDContextos;
using _03Recado.DTOs;
using _03Recado.DTOs.RecadosDTO;
using _03Recado.DTOs.UsuariosDTO;
using _03Recado.Entidades;
using Microsoft.AspNetCore.Http.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.OutputCaching;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using Microsoft.OpenApi.Models;
using System.Text.Json.Serialization;


var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<RecadoContexto>(options =>options.UseMySql(builder.Configuration["ConnectionStrings:RecadosBD"],ServerVersion.Parse(builder.Configuration["ConnectionStrings:RecadosBDVersao"])));
builder.Services.AddOutputCache();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(o =>
{
    o.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "Titulo Teste Doc 1",
        Version = "1",
        Description = "Descrição Titulo Teste Doc 1"
    });
});
var app = builder.Build();


//usuarios
app.MapPost("/v1/usuario", async (RecadoContexto recadoContexto, [FromBody]UsuarioRequisicaoDTO dto) =>
{
    Usuarios usuario = dto;
    recadoContexto.Usuarios.Add(usuario);
    await recadoContexto.SaveChangesAsync();
    return Results.Created($"/v1/usuario/{usuario.Id}",(UsuarioRespostaDTO)usuario);
});
app.MapPut("/v1/usuario/{id:int}", async (RecadoContexto recadoContexto, [FromBody] UsuarioRequisicaoDTO dto, [FromRoute]int id) =>
{
    var usuario = await recadoContexto.Usuarios.AsNoTracking().FirstOrDefaultAsync(x=>x.Id==id);
    if (usuario == null)
    {
        return Results.NotFound();
    }
    dto.Atualizar(usuario);
    recadoContexto.Usuarios.Update(usuario);
    await recadoContexto.SaveChangesAsync();
    return Results.NoContent();
});
app.MapDelete("/v1/usuario/{id:int}", async (RecadoContexto recadoContexto, [FromRoute] int id) =>
{
    var usuario = await recadoContexto.Usuarios.AsNoTracking().FirstOrDefaultAsync(x => x.Id == id);
    if (usuario == null)
    {
        return Results.NotFound();
    }
    recadoContexto.Usuarios.Remove(usuario);
    await recadoContexto.SaveChangesAsync();
    return Results.NoContent();
});
app.MapGet("/v1/usuario/{id:int}", async (RecadoContexto recadoContexto, [FromRoute]int id) =>
{
    var usuario = await recadoContexto.Usuarios.AsNoTracking().FirstOrDefaultAsync(x => x.Id == id);
    if (usuario == null)
    {
        return Results.NotFound();
    }
    return Results.Ok((UsuarioRespostaDTO)usuario);
});
app.MapGet("/v1/usuarios", async (RecadoContexto recadoContexto) =>
{
    var usuarios = await recadoContexto.Usuarios.Select(o=>(UsuarioRespostaDTO)o).AsNoTracking().ToListAsync();
    return Results.Ok(usuarios);
});




//recados
app.MapPost("/v1/recado", async (IOutputCacheStore outputCacheStore,RecadoContexto recadoContexto, [FromBody]RecadosRequisicaoDTO dto) =>
{
    Recados recado = dto;
    recadoContexto.Recados.Add(recado);
    await recadoContexto.SaveChangesAsync();
    await outputCacheStore.EvictByTagAsync("BuscarRecados",default);
    //recado = await recadoContexto.Recados.AsNoTracking().Include(o => o.Remetente).Include(o => o.Destinatario).FirstOrDefaultAsync(o => o.Id == recado.Id);
    await recadoContexto.Entry(recado).Reference(o => o.Remetente).LoadAsync();
    await recadoContexto.Entry(recado).Reference(o => o.Destinatario).LoadAsync();
    return Results.Created($"/v1/recado/{recado.Id}", (RecadosRespostaDTO)recado);
});
app.MapPut("/v1/recado/{id:int}/leitura", async (IOutputCacheStore outputCacheStore, RecadoContexto recadoContexto, [FromRoute]int id, [FromQuery]bool leitura) =>
{
    var recado = await recadoContexto.Recados.AsNoTracking().Include(o => o.Remetente).Include(o => o.Destinatario).FirstOrDefaultAsync(o => o.Id == id);
    if (recado == null)
    {
        return Results.NotFound();
    }
    recado.Leitura = leitura;
    recadoContexto.Recados.Update(recado);
    await recadoContexto.SaveChangesAsync();
    await outputCacheStore.EvictByTagAsync("BuscarRecados", default);
    return Results.NoContent();
});
app.MapDelete("/v1/recado/{id:int}", async (IOutputCacheStore outputCacheStore, RecadoContexto recadoContexto, [FromRoute] int id) =>
{
    var recado = await recadoContexto.Recados.AsNoTracking().FirstOrDefaultAsync(o => o.Id == id);
    if (recado == null)
    {
        return Results.NotFound();
    }
    recadoContexto.Recados.Remove(recado);
    await recadoContexto.SaveChangesAsync();
    await outputCacheStore.EvictByTagAsync("BuscarRecados", default);
    return Results.NoContent();
});
app.MapGet("/v1/recado/remetente/{id:int}", async (RecadoContexto recadoContexto, [FromRoute] int id, [FromQuery]bool? leitura = null) =>
{
    var recados = await recadoContexto.Recados.AsNoTracking().Where(o=>o.RemetenteId==id).Include(o=>o.Remetente).Include(o => o.Destinatario).Select(o=>(RecadosRespostaDTO)o).ToListAsync();
    if (recados.Count==0)
    {
        return Results.NoContent();
    }
    if (leitura != null)
    {
        recados = recados.Where(o=>o.Leitura==leitura).ToList();
    }

    return Results.Ok(recados);
});
app.MapGet("/v1/recado/destinatario/{id:int}", async (RecadoContexto recadoContexto, [FromRoute] int id, [FromQuery] bool? leitura = null) =>
{
    var recados = await recadoContexto.Recados.AsNoTracking().Where(o => o.DestinatarioId == id).Include(o => o.Remetente).Include(o => o.Destinatario).Select(o => (RecadosRespostaDTO)o).ToListAsync();
    if (recados.Count == 0)
    {
        return Results.NoContent();
    }
    if (leitura != null)
    {
        recados = recados.Where(o => o.Leitura == leitura).ToList();
    }

    return Results.Ok(recados);
});

app.MapGet("/v1/recado/{id:int}", async (RecadoContexto recadoContexto, [FromRoute]int id) =>
{
    var recado = await recadoContexto.Recados.AsNoTracking().Include(o=>o.Remetente).Include(o => o.Destinatario).FirstOrDefaultAsync(o=>o.Id==id);
    if (recado == null)
    {
        return Results.NotFound();
    }
    return Results.Ok((RecadosRespostaDTO)recado);
});
app.MapGet("/v1/recados", async (RecadoContexto recadoContexto) =>
{
    var recados = await recadoContexto.Recados.AsNoTracking()
    .Include(o=>o.Remetente)
    .Include(o => o.Destinatario).OrderBy(o => o.Id)
    .Select(o=>(RecadosRespostaDTO)o).ToListAsync(); 
     return Results.Ok(recados); 
}).CacheOutput(o=>o.Expire(TimeSpan.FromMinutes(60)).Tag("BuscarRecados"));


app.UseOutputCache();
app.UseSwagger();
app.UseSwaggerUI(o =>
{
    o.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
    o.RoutePrefix = "doc/v1";
});
app.Run();










