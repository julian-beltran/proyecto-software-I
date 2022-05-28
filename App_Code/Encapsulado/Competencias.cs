using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Competencias
/// </summary>
[Serializable]
[Table("competencias", Schema = "competencias")]
public class Competencias
{
    private int id;
    private string dato;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("dato")]
    public string Dato { get => dato; set => dato = value; }
}