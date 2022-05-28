using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Reclutador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["empresa"] == null)
            Response.Redirect("Login.aspx");
        if (((Empresa)Session["empresa"]).Rol != 2)
            Response.Redirect("Login.aspx");
        L_Mensaje.Text = "" +((Empresa)Session["empresa"]).Correo;
    }
   
    protected void B_CrearOferta_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearOferta.aspx");
    }

    protected void B_Atras_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reclutador.aspx");
    }

    protected void B_VerOferta_Click(object sender, EventArgs e)
    {

    }

    protected void B_EditarCuenta_Click(object sender, EventArgs e)
    {

    }

    protected void B_CerrarSesion_Click(object sender, EventArgs e)
    {
        Response.Redirect("login1.aspx");
    }
}