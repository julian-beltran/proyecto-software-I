using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_curriculum
/// </summary>
public class DAO_curriculum
{
    public List<curriculum> mostrarCurriculum(string aspiranteId)
    {
        using (var db = new Mapeo())
        {
            return (from u in db.usuario
                    join c in db.curriculum on u.Identificacion equals c.Cedula
                    select new
                    {
                        u,
                        c,
                    }).ToList().Select(m => new curriculum
                    {
                        Nom_ape=m.c.Nom_ape,
                        Edad=m.c.Edad,
                        Contacto=m.c.Contacto,
                        Cedula=m.c.Cedula,
                        Competencias=m.c.Competencias,
                        Id = m.c.Id,
                        Experiencia =m.c.Experiencia,
                        Carrera=m.c.Carrera,
                       

                    }).Where(x => x.Cedula.Equals(aspiranteId)).ToList();
        }
    }


    public void AgregarCurriculum(curriculum crm)
    {
        Mapeo a = new Mapeo();

        a.curriculum.Add(crm);
        a.SaveChanges();
    }
}