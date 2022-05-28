using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_curriculum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aspirante"] == null)
            Response.Redirect("login1.aspx");
        if (((Aspirante)Session["aspirante"]).Rol != 3)
            Response.Redirect("login1.aspx");
        L_nombreApellido.Text = ((Aspirante)Session["aspirante"]).Nombre+" "+((Aspirante)Session["aspirante"]).Apellido;
    }

    protected void Tb_fecha_TextChanged(object sender, EventArgs e)
    {  
        L_suEdad.Text = DateTime.Now.AddYears(DateTime.Parse(Tb_fecha.Text).Year * -1).Year.ToString();
    }

    protected void BTN_guardarDatos_Click(object sender, EventArgs e)
    {
      
        curriculum crm = new curriculum();

        crm.Nom_ape = L_nombreApellido.Text;
        crm.Contacto = TB_telefonoAsp.Text;
        crm.Cedula = TB__Cedula.Text;
        crm.Competencias = DDL_competencias.SelectedValue;
        crm.Edad = L_suEdad.Text;
        crm.Experiencia = DDL_xp.SelectedValue;
        crm.Carrera = DDL_carrera.SelectedValue;

        new DAO_curriculum().AgregarCurriculum(crm);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aspirante.aspx");
    }
}