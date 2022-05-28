using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Aplicar
/// </summary>
/// [Serializable]
[Table("aplicados", Schema = "aplicaciones")]
public class Aplicar
{
    private int id;
    private string nombre;
    private string apellido;
    private string correo;
    private string id_oferta;
    private string id_empresa;
    private string userId;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("id_oferta")]
    public string Id_oferta { get => id_oferta; set => id_oferta = value; }
    [Column("id_empresa")]
    public string Id_empresa { get => id_empresa; set => id_empresa = value; }
    [Column("userId")]
    public string UserId { get => userId; set => userId = value; }
}