using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Carreras
/// </summary>
[Serializable]
[Table("carrera", Schema = "carreras")]
public class Carreras
{
    private int id;
    private string carrera;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("carrera")]
    public string Carrera { get => carrera; set => carrera = value; }
}