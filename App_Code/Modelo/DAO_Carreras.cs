using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Carreras
/// </summary>
public class DAO_Carreras
{
    public List<Carreras> carreras()
    {
        List<Carreras> lista = new List<Carreras>();
        using (var db = new Mapeo())
        {
            lista = db.carrera.ToList();

        }

        Carreras c = new Carreras();
        c.Id = 0;


        c.Carrera = "- Seleccione -";
        lista.Add(c);

        return lista.OrderBy(x => x.Carrera).ToList();
    }
}