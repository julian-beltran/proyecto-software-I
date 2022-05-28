using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Municipios
/// </summary>
public class DAO_Municipios
{
    public List<Municipios> obtenerMunicipios()
    {
        List<Municipios> lista = new List<Municipios>();
        using (var db = new Mapeo())
        {
            lista = db.municipios.ToList();

        }

        Municipios lugar = new Municipios();
        lugar.Id = 0;
        

        lugar.Nombre = "- Seleccione -";
        lista.Add(lugar);

        return lista.OrderBy(x => x.Nombre).ToList();
    }
}