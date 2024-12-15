using System;
using System.Collections.Generic;

namespace _03Recado.Entidades;

public partial class Recados
{
    public int Id { get; set; }

    public string Titulo { get; set; } = null!;

    public string Mensagem { get; set; } = null!;

    public DateTime Data { get; set; }

    public bool Leitura { get; set; }

    public int RemetenteId { get; set; }

    public int DestinatarioId { get; set; }

    public virtual Usuarios Destinatario { get; set; } = null!;

    public virtual Usuarios Remetente { get; set; } = null!;
}
