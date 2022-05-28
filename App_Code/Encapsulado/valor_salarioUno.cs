using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de valor_salarioUno
/// </summary>
/// 
[Serializable]
[Table("valor1", Schema = "salarios")]
public class valor_salarioUno
{
   private int id;
   private int valor;

   [Key]
   [Column("id")]
   public int Id { get => id; set => id = value; }
   [Column("valor")]
   public int Valor { get => valor; set => valor = value; }
}