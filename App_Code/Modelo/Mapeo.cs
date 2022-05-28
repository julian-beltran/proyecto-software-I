using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }

    public Mapeo() : base("name=conexion")
    {

    }

    public DbSet<Aspirante> usuario { get; set; }
    public DbSet<Empresa> empresa { get; set; }
    public DbSet<Ofertas> oferta { get; set; }
    public DbSet<Municipios> municipios { get; set; }
    public DbSet<valor_salarioUno> valor_Salario { get; set; }
    public DbSet<Carreras> carrera { get; set; }
    public DbSet<Experiencia> experiencia { get; set; }
    public DbSet<Competencias> competencia { get; set; }
    public DbSet<curriculum> curriculum { get; set; }
    public DbSet<Aplicar> aplr { get; set; }

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema("public");
        base.OnModelCreating(builder);
    }
}