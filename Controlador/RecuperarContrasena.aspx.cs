using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_RecuperarContrasena : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* if (Request.QueryString.Count > 0)
        {
            Empresa user = new DAO_Empresa().buscarToken(Request.QueryString[0]);

            if (user == null)
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token es invalido. Genere uno nuevo');window.location=\"Login.aspx\"</script>");
            else if (user.Vencimiento_token < DateTime.Now)
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"Login.aspx\"</script>");
            else
                Session["userRecuperado"] = user;
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
             */

        if (Request.QueryString.Count > 0)
        {
            Aspirante asp = new DAO_Aspirante().buscarToken(Request.QueryString[0]);

            if (asp == null)
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token es invalido. Genere uno nuevo');window.location=\"Login.aspx\"</script>");
            else if (asp.Vencimiento_token < DateTime.Now)
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"Login.aspx\"</script>");
            else
                Session["userRecuperado"] = asp;
        }
        else
        {
            //Response.Redirect("login1.aspx");
        }
    }

    protected void B_Cambiar_Click(object sender, EventArgs e)
    {


        /*
         * 
         * if (TB_Nueva.Text.Length <= 8)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Passsword muy corto')</script>");
            return;
        }Empresa user = (Empresa)Session["userRecuperado"];

		user.Token = null;
		user.Vencimiento_token = null;
		user.Contrasena = TB_Nueva.Text;

		new DAO_Empresa().actualizarUsuario(user);*/



        if (TB_Nueva.Text.Length <= 8)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Passsword muy corto')</script>");
            return;
        }
        else
        {
            Aspirante asp = (Aspirante)Session["userRecuperado"];

            asp.Token = null;
            asp.Vencimiento_token = null;
            asp.Contrasena = TB_Nueva.Text;

            new DAO_Aspirante().actualizarUsuario(asp);
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('CONTRASEÑA ACTUALIZADA')</script>");
        }
        Response.Redirect("login1.aspx");
    }

    
}
