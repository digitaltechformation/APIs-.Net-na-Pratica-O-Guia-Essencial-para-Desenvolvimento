using System;
using System.Collections.Generic;

namespace _03Recado.Entidades;

public partial class Usuarios
{
    public int Id { get; set; }

    public string Nome { get; set; } = null!;

    public virtual ICollection<Recados> RecadosDestinatario { get; set; } = new List<Recados>();

    public virtual ICollection<Recados> RecadosRemetente { get; set; } = new List<Recados>();
}
