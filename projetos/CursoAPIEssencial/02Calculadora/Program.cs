using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello World!");


//rota - route
app.MapGet("/api/calculadora/somar/{numero1:double}/{numero2:double}", RetornoSomar);

//consulta - query
app.MapGet("/api/calculadora/subtrair", RetornoSubtrair);

//cabeçario - header
app.MapGet("/api/calculadora/multiplicar", RetornoMultiplicar);

//corpo - body
app.MapGet("/api/calculadora/dividir", RetornoDividir);

app.Run();

string RetornoDividir([FromBody] Dados valor)
{
    double resultado = valor.numero1 / valor.numero2;
    return $"retorno da divisão de {valor.numero1} e {valor.numero2} : {resultado}";
}
string RetornoSomar([FromRoute]double numero1, [FromRoute]double numero2)
{
    double resultado = numero1 + numero2;
    return $"retorno da soma de {numero1} e {numero2} : {resultado}";
}
string RetornoSubtrair([FromQuery] double numero1, [FromQuery] double numero2)
{
    double resultado = numero1 - numero2;
    return $"retorno da subtração de {numero1} e {numero2} : {resultado}";
}
string RetornoMultiplicar([FromHeader] double numero1, [FromHeader] double numero2)
{
    double resultado = numero1 * numero2;
    return $"retorno da multiplicação de {numero1} e {numero2} : {resultado}";
}

public record Dados
{
    public double numero1 { get; set; }
    public double numero2 { get; set; }
}
