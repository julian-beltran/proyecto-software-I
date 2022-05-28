using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logIn_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        Empresa empresa = new Empresa();
        empresa.Usuario = UserName.Text;
        empresa.Contrasena = Password.Text;
        empresa = new DAO_Empresa().login(empresa);

        Aspirante aspirante = new Aspirante();
        aspirante.Usuario = UserName.Text;
        aspirante.Contrasena = Password.Text;
        aspirante = new DAO_Aspirante().login(aspirante);

        if (empresa != null)
        {
            Session["empresa"] = empresa;
            switch (empresa.Rol)
            {
                case 2:
                    Session["empresaTel"] = empresa.Telefono_Id;
                    Response.Redirect("Reclutador.aspx");
                    break;
                default:
                    break;
            }
        }
        if (aspirante != null)
        {
            Session["aspirante"] = aspirante;
            switch (aspirante.Rol)
            {
                case 3:
                    Session["aspiranteId"] = aspirante.Identificacion;
                    Response.Redirect("Aspirante.aspx");
                    break;
                default:
                    break;
            }
        }
        else
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('USUARIO NO EXISTE, VERIFIQUE USUARIO Y/O CONTRASEÑA');</script>");

        }
    }

    protected void registrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistroAspirante.aspx");
    }

    protected void Regresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.html");
    }
}
