using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Descripción breve de DAO_Ofertas
/// </summary>
public class DAO_Ofertas
{


    public void agregarOferta(Ofertas ofertas)
    {
        Mapeo a = new Mapeo();

        a.oferta.Add(ofertas);
        a.SaveChanges();
    }

    public List<Ofertas> mostrarOfertasEmpresa(string telefono_Id)
    {
        using (var db = new Mapeo())
        {
            return (from e in db.empresa
                    join oe in db.oferta on e.Telefono_Id equals oe.empresaID
                    select new
                    {
                        e,
                        oe,
                    }).ToList().Select(m => new Ofertas
                    {
                        Titulo = m.oe.Titulo,
                        Descripcion = m.oe.Descripcion,
                        Municipio = m.oe.Municipio,
                        Salario = m.oe.Salario,
                        Id = m.oe.Id,
                        empresaID = m.oe.empresaID,
                        Nombre = m.oe.Nombre,
                       
                    }).Where(x => x.empresaID.Equals(telefono_Id)).ToList();
        }
    }

   

    public List<Ofertas> mostrarOfertasUsuarioRegitrado(int id)
    {
        using (var db = new Mapeo())
        {
            return (from e in db.oferta
                   // join c in db.oferta on e.Id equals c.Id
                    select new
                    {
                        e,
                        //c,
                    }).ToList().Select(m => new Ofertas
                    {
                        Titulo = m.e.Titulo,
                        Descripcion = m.e.Descripcion,
                        Municipio = m.e.Municipio,
                        Salario = m.e.Salario,
                        Id = m.e.Id,
                        empresaID = m.e.empresaID,
                        Id_oferta=m.e.Id_oferta,
                        Nombre=m.e.Nombre,
                        //OfertaID=m.e.OfertaID

                    }).OrderBy(x => x.Salario).ToList();
        }
    }


    public List<Ofertas> mostrarOfertasUsuarioVisitante()
    {
        using (var db = new Mapeo())
        {
            return (from e in db.oferta
             
                    select new
                    {
                        e,
                        //c,
                    }).ToList().Select(m => new Ofertas
                    {                       
                        Titulo = m.e.Titulo,
                        Descripcion = m.e.Descripcion,
                        Municipio = m.e.Municipio,
                        Salario = m.e.Salario,
                        Id = m.e.Id,
                        empresaID = m.e.empresaID,
                        Id_oferta = m.e.Id_oferta,
                        Nombre = m.e.Nombre,                        
                        //OfertaID=m.e.OfertaID
                    }).OrderBy(x => x.Salario).ToList();
        }
    }

    public void editarOferta(Ofertas editar)
    {
        using (var db = new Mapeo())
        {
            Ofertas antO = db.oferta.Where(x => x.Id == editar.Id).FirstOrDefault();
           
            antO.Titulo = editar.Titulo;
            antO.Descripcion = editar.Descripcion;
            antO.Municipio = editar.Municipio;
            antO.Salario = editar.Salario;
   
            var enty = db.Entry(antO);
            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarOferta(Ofertas eliminar)
    {
        using (var db = new Mapeo())
        {
            var enty = db.Entry(eliminar);
            enty.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
}