using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Salarios
/// </summary>
public class DAO_Salarios
{

    public List<valor_salarioUno> obtenerSalario()
    {
        List<valor_salarioUno> lista = new List<valor_salarioUno>();
        using (var db = new Mapeo())
        {
            lista = db.valor_Salario.ToList();
        }
        valor_salarioUno vl1 = new valor_salarioUno();
        vl1.Id = 0;
        vl1.Valor= 0;
        lista.Add(vl1);
        return lista.OrderBy(x => x.Valor).ToList();
    }




    public List<Ofertas> obtenerSalariosXValor(int v1, int v2)
    {
        using (var db = new Mapeo())
        {
            return (from oferta in db.oferta
                    where oferta.Salario >= v1 && oferta.Salario <= v2
                    select new
                    {
                        oferta,
                    }).ToList().Select(m => new Ofertas
                    {
                        Id = m.oferta.Id,
                        Nombre = m.oferta.Nombre,
                        Titulo = m.oferta.Titulo,
                        Descripcion = m.oferta.Descripcion,
                        Salario = m.oferta.Salario,
                    }).OrderByDescending(x => x.Salario).ToList();
        }
    }
}