using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Empresa
/// </summary>
public class DAO_Empresa
{
    public Empresa login(Empresa empresa)
    {
        using (var db = new Mapeo())
        {
            return db.empresa.Where(x => x.Usuario.Equals(empresa.Usuario) && x.Contrasena.Equals(empresa.Contrasena)).FirstOrDefault();
        }
    }

    public Empresa validarCorreo(string correo)
    {
        using (var db = new Mapeo())
        {
            return db.empresa.Where(x => x.Correo.ToLower().Equals(correo.ToLower())).FirstOrDefault();
        }
    }

    public Empresa buscarToken(string token)
    {
        using (var db = new Mapeo())
        {
            return db.empresa.Where(x => x.Token.Equals(token)).FirstOrDefault();
        }
    }

    public void actualizarUsuario(Empresa user)
    {
        using (var db = new Mapeo())
        {
            db.empresa.Attach(user);

            var entry = db.Entry(user);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

        public void agregarEmpresa(Empresa empresa)
    {
        Mapeo a = new Mapeo();

        a.empresa.Add(empresa);
        a.SaveChanges();

    }

    public List<Empresa> mostrarEmpresa(string idEmpresa)
    {
        using (var db = new Mapeo())
        {
            return (from e in db.empresa
                    join c in db.empresa on e.Telefono_Id equals c.Telefono_Id
                    select new
                    {
                        e,
                        c,
                    }).ToList().Select(m => new Empresa
                    {
                        Nombre = m.e.Nombre,
                        Telefono_Id = m.e.Telefono_Id,
                        Contrasena = m.e.Contrasena,
                        Correo = m.e.Correo,
                        Direccion = m.e.Direccion,
                        Rol = m.e.Rol,
                        Usuario = m.e.Usuario,
                        Id = m.e.Id,

                    }).Where(x => x.Telefono_Id.Equals(idEmpresa)).ToList();
        }
    }

    public void editarPerfilEmpresa(Empresa e)
    {
        using (var db = new Mapeo()){
            Empresa ee = db.empresa.Where(x => x.Id == e.Id).FirstOrDefault();
            ee.Nombre = e.Nombre;
            ee.Usuario = e.Usuario;
            ee.Correo = e.Correo;
            ee.Direccion = e.Direccion;
            var enty = db.Entry(ee);
            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }


    public List<Aplicar> obtenerAspiranteXOferta(string empresaTel)
    {
        using (var db = new Mapeo())
        {
            return (from emp in db.empresa
                    join apli in db.aplr on emp.Telefono_Id equals apli.Id_empresa
                    select new
                    {
                        emp,
                        apli,

                    }).ToList().Select(m => new Aplicar
                    {
                        Nombre = m.apli.Nombre,
                        Apellido = m.apli.Apellido,
                        UserId = m.apli.UserId,
                        Correo = m.apli.Correo,
                        Id_empresa = m.apli.Id_empresa,
                        Id_oferta = m.apli.Id_oferta

                    }).Where(x => x.Id_empresa.Equals(empresaTel)).ToList();
        }
    }
}