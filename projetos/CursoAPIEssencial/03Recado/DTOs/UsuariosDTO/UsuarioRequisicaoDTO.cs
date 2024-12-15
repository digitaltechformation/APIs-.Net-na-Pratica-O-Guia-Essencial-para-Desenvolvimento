using _03Recado.Entidades;

namespace _03Recado.DTOs.UsuariosDTO
{
    public class UsuarioRequisicaoDTO
    {
        public string Nome { get; set; } = null!;

        public void Atualizar(Usuarios usuario)
        {
            usuario.Nome = Nome;
        }

        public static implicit operator Usuarios(UsuarioRequisicaoDTO dto)
        {
            return new Usuarios
            {
                Nome = dto.Nome
            };
        }

        public static implicit operator UsuarioRequisicaoDTO(Usuarios obj)
        {
            return new UsuarioRequisicaoDTO
            {
                Nome = obj.Nome
            };
        }
    }
}
