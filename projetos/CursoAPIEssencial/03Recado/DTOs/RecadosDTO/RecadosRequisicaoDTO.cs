using _03Recado.Entidades;

namespace _03Recado.DTOs.RecadosDTO
{
    public class RecadosRequisicaoDTO
    {
        public string Titulo { get; set; } = null!;

        public string Mensagem { get; set; } = null!;

        public DateTime Data { get; set; }

        public bool Leitura { get; set; }

        public int RemetenteId { get; set; }

        public int DestinatarioId { get; set; }


        public static implicit operator Recados(RecadosRequisicaoDTO dto)
        {
            return new Recados
            {
                Titulo = dto.Titulo,
                Mensagem = dto.Mensagem,
                Data = dto.Data,
                Leitura = dto.Leitura,
                RemetenteId = dto.RemetenteId,
                DestinatarioId = dto.DestinatarioId
            };
        }

        public static implicit operator RecadosRequisicaoDTO(Recados obj)
        {
            return new RecadosRequisicaoDTO
            {
                Titulo = obj.Titulo,
                Mensagem = obj.Mensagem,
                Data = obj.Data,
                Leitura = obj.Leitura,
                RemetenteId=obj.RemetenteId,
                DestinatarioId=obj.DestinatarioId
            };
        }
    }
}
