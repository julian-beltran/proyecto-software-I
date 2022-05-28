using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


/// <summary>
/// Descripción breve de DAO_Aspirante
/// </summary>
public class DAO_Aspirante
{
    public Aspirante login(Aspirante aspirante)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Usuario.Equals(aspirante.Usuario) && x.Contrasena.Equals(aspirante.Contrasena)).FirstOrDefault();
        }
    }

    public void agregarUsuario(Aspirante aspirante)
    {
        Mapeo a = new Mapeo();

        a.usuario.Add(aspirante);
        a.SaveChanges();
    }


    public Aspirante validarCorreo(string correo)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Correo.ToLower().Equals(correo.ToLower())).FirstOrDefault();
        }
    }

    public Aspirante buscarToken(string token)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Token.Equals(token)).FirstOrDefault();
        }
    }

    public void actualizarUsuario(Aspirante user)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Attach(user);

            var entry = db.Entry(user);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public List<Aspirante> mostrarPerfilAspirante(string aspiranteId)
    {
        using (var db = new Mapeo())
        {
            return (from e in db.usuario
                    join c in db.usuario on e.Id equals c.Id
                    select new
                    {
                        e,
                        c,
                    }).ToList().Select(m => new Aspirante
                    {
                        Nombre = m.e.Nombre,
                        Apellido = m.e.Apellido,
                        Contrasena = m.e.Contrasena,
                        Correo = m.e.Correo,
                        Rol = m.e.Rol,
                        Usuario = m.e.Usuario,
                        Identificacion=m.e.Identificacion,
                        Id = m.e.Id,
                   
                    }).Where(x => x.Identificacion.Equals(aspiranteId)).ToList();
        }
    }

    public void editarPerfilAspirante(Aspirante editar)
    {
        using (var db = new Mapeo())
        {
            Aspirante ant = db.usuario.Where(x => x.Id == editar.Id).FirstOrDefault();

            ant.Nombre = editar.Nombre;
            ant.Apellido = editar.Apellido;
            ant.Usuario = editar.Usuario;      
            ant.Correo = editar.Correo;
            ant.Identificacion = editar.Identificacion;
            
            var enty = db.Entry(ant);

            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
}