using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Empresa
/// </summary>
/// 
[Serializable]
[Table("empresa", Schema = "usuario")]
public class Empresa
{
    private string nombre;
    private string usuario;
    private string contrasena;
    private string telefono_Id;
    private int rol;
    private string correo;
    private string direccion;
    private int id;
    private string token;
    private Nullable<DateTime> ultima_modificacion;
    private Nullable<DateTime> vencimiento_token;
    private string session;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("telefono_Id")]
    public string Telefono_Id { get => telefono_Id; set => telefono_Id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("usuario")]
    public string Usuario { get => usuario; set => usuario = value; }
    [Column("contrasena")]
    public string Contrasena { get => contrasena; set => contrasena = value; }
    [Column("rol")]
    public int Rol { get => rol; set => rol = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }
    [Column("token")]
    public string Token { get => token; set => token = value; }
    [Column("ultima_modificacion")]
    public DateTime? Ultima_modificacion { get => ultima_modificacion; set => ultima_modificacion = value; }
    [Column("vencimiento_token")]
    public DateTime? Vencimiento_token { get => vencimiento_token; set => vencimiento_token = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
}