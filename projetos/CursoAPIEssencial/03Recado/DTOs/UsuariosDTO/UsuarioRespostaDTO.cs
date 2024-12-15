using _03Recado.Entidades;

namespace _03Recado.DTOs.UsuariosDTO
{
    public class UsuarioRespostaDTO
    {
        public int Id { get; set; }
        public string Nome { get; set; } = null!;

        public static implicit operator Usuarios(UsuarioRespostaDTO dto)
        {
            return new Usuarios
            {
                Id = dto.Id,
                Nome = dto.Nome,
                RecadosDestinatario = null,
                RecadosRemetente = null
            };
        }

        public static implicit operator UsuarioRespostaDTO(Usuarios obj)
        {
            return new UsuarioRespostaDTO
            {
                Id = obj.Id,
                Nome = obj.Nome
            };
        }
    }
}
