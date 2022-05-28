using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Experiencia
/// </summary>
public class DAO_Experiencia
{
    public List<Experiencia> experiencia()
    {
        List<Experiencia> lista = new List<Experiencia>();
        using (var db = new Mapeo())
        {
            lista = db.experiencia.ToList();

        }

        Experiencia c = new Experiencia();
        c.Id = 0;


        c.Dato = "- Seleccione -";
        lista.Add(c);

        return lista.OrderBy(x => x.Dato).ToList();
    }
}