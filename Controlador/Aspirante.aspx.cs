using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Aspirante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aspirante"] == null)
            Response.Redirect("Login.aspx");
        if (((Aspirante)Session["aspirante"]).Rol != 3)
            Response.Redirect("Login.aspx");
        L_Mensaje.Text = "" + ((Aspirante)Session["aspirante"]).Nombre +" "+ ((Aspirante)Session["aspirante"]).Apellido;
        //L_Id.Text= ((Aspirante)Session["aspirante"]).Identificacion;

        if (Session["aspirante"] != null)
        {
            Aspirante asp = new Aspirante();
            asp.Session = L_Id.Text;
        }
    }


    protected void B_CerrarSesion_Click(object sender, EventArgs e)
    {
        Response.Redirect("login1.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("curriculum.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("verCurriculum.aspx");
    }
}