using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Competencias
/// </summary>
public class DAO_Competencias
{
    public List<Competencias> competencias()
    {
        List<Competencias> lista = new List<Competencias>();
        using (var db = new Mapeo())
        {
            lista = db.competencia.ToList();

        }

        Competencias c = new Competencias();
        c.Id = 0;


        c.Dato = "- Seleccione -";
        lista.Add(c);

        return lista.OrderBy(x => x.Dato).ToList();
    }
}