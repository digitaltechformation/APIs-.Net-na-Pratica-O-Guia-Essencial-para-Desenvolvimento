using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Scaffolding.Internal;
using _03Recado.Entidades;

namespace _03Recado.BDContextos;

public partial class RecadoContexto : DbContext
{
    public RecadoContexto()
    {
    }

    public RecadoContexto(DbContextOptions<RecadoContexto> options)
        : base(options)
    {
    }

    public virtual DbSet<Recados> Recados { get; set; }

    public virtual DbSet<Usuarios> Usuarios { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseMySql("name=RecadosBD", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.40-mysql"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_0900_ai_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<Recados>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("recados");

            entity.HasIndex(e => e.DestinatarioId, "fk_destinatario_id_idx");

            entity.HasIndex(e => e.RemetenteId, "fk_remetente_id_idx");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Data)
                .HasColumnType("timestamp")
                .HasColumnName("data");
            entity.Property(e => e.DestinatarioId).HasColumnName("destinatario_id");
            entity.Property(e => e.Leitura).HasColumnName("leitura");
            entity.Property(e => e.Mensagem)
                .HasColumnType("text")
                .HasColumnName("mensagem");
            entity.Property(e => e.RemetenteId).HasColumnName("remetente_id");
            entity.Property(e => e.Titulo)
                .HasMaxLength(100)
                .HasColumnName("titulo");

            entity.HasOne(d => d.Destinatario).WithMany(p => p.RecadosDestinatario)
                .HasForeignKey(d => d.DestinatarioId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_destinatario_id");

            entity.HasOne(d => d.Remetente).WithMany(p => p.RecadosRemetente)
                .HasForeignKey(d => d.RemetenteId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_remetente_id");
        });

        modelBuilder.Entity<Usuarios>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("usuarios");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Nome)
                .HasMaxLength(100)
                .HasColumnName("nome");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
