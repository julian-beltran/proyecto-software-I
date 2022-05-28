using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Ofertas
/// </summary>
/// 
[Serializable]
[Table("ofertas", Schema = "ofertas")]
public class Ofertas
{
    private string titulo;
    private string descripcion;
    private string municipio;
    private int salario;
    private string empresaId;
    private int id;
    private string nombre;
    private string id_oferta;
    //private string ofertaID;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("empresaId")]
    public string empresaID { get => empresaId; set => empresaId = value; }
    [Column("titulo")]
    public string Titulo { get => titulo; set => titulo = value; }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("municipio")]
    public string Municipio { get => municipio; set => municipio = value; }
    [Column("salario")]
    public int Salario { get => salario; set => salario = value; }
    [Column("id_oferta")]
    public string Id_oferta { get => id_oferta; set => id_oferta = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
  
    /*[Column("ofertaID")]
    public string OfertaID { get => ofertaID; set => ofertaID = value; }*/
}


