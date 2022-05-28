using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Aplicar
/// </summary>
public class DAO_Aplicar
{
    public void agregarAplicacion(Aplicar aplicar)
    {
        Mapeo a = new Mapeo();

        a.aplr.Add(aplicar);
        a.SaveChanges();

    }
}