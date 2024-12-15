using _03Recado.DTOs.UsuariosDTO;
using _03Recado.Entidades;

namespace _03Recado.DTOs.RecadosDTO
{
    public class RecadosRespostaDTO
    {
        public int Id { get; set; }

        public string Titulo { get; set; } = null!;

        public string Mensagem { get; set; } = null!;

        public DateTime Data { get; set; }

        public bool Leitura { get; set; }
        
        public virtual UsuarioRespostaDTO Remetente { get; set; } = null!;
        
        public virtual UsuarioRespostaDTO Destinatario { get; set; } = null!;

        public static implicit operator Recados(RecadosRespostaDTO dto)
        {
            return new Recados
            {
                Id = dto.Id,
                Titulo = dto.Titulo,
                Mensagem = dto.Mensagem,
                Data = dto.Data,
                Leitura = dto.Leitura,
                Remetente = dto.Remetente,
                Destinatario = dto.Destinatario
            };
        }

        public static implicit operator RecadosRespostaDTO(Recados obj)
        {
            return new RecadosRespostaDTO()
            {
                Id = obj.Id,
                Titulo = obj.Titulo,
                Mensagem = obj.Mensagem,
                Data = obj.Data,
                Leitura = obj.Leitura,
                Remetente = obj.Remetente,
                Destinatario = obj.Destinatario
            };
        }
        
    }
}
