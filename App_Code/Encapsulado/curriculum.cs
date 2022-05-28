using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de curriculum
/// </summary>
/// [Serializable]
[Table("curriculum", Schema = "curriculum")]
public class curriculum
{
    private int id;
    private string nom_ape;
    private string contacto;
    private string edad;
    private string cedula;
    private string experiencia;
    private string competencias;
    private string carrera;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nom_ape")]
    public string Nom_ape { get => nom_ape; set => nom_ape = value; }
    [Column("contacto")]
    public string Contacto { get => contacto; set => contacto = value; }
    [Column("edad")]
    public string Edad { get => edad; set => edad = value; }
    [Column("cedula")]
    public string Cedula { get => cedula; set => cedula = value; }
    [Column("experiencia")]
    public string Experiencia { get => experiencia; set => experiencia = value; }
    [Column("competencias")]
    public string Competencias { get => competencias; set => competencias = value; }
    [Column("carrera")]
    public string Carrera { get => carrera; set => carrera = value; }
}