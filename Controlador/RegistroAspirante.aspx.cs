using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

public partial class Vista_RegistroAspirante : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void B_Atras_Click(object sender, EventArgs e)
    {
        Response.Redirect("EleccionDeRol.aspx");
    }

    Mapeo con = new Mapeo();

    public bool ExisteI(string cap)
    {
        var entity = con.usuario.SingleOrDefault(c => c.Identificacion == cap);
        return entity != null;
    }

    public bool ExisteC(string cap)
    {
        var entity = con.usuario.SingleOrDefault(c => c.Correo == cap);
        return entity != null;
    }

    public bool ExisteU(string cap)
    {
        var entity = con.usuario.SingleOrDefault(c => c.Usuario == cap);
        return entity != null;
    }


    protected void B_Registrar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        Aspirante aspirante = new Aspirante();
      
        if (ExisteI(TB_Identificacion.Text.Trim()))
        {

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Identificacion existente";
        }
        else if (ExisteC(TB_Correo.Text.Trim()))
        {

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Correo existente";
        }
        else if (ExisteU(TB_Identificacion.Text.Trim()))
        {

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Usuario existente";
        }
        else
        {
            aspirante.Rol = 3;
            aspirante.Nombre = TB_Nombre.Text;
            aspirante.Apellido = TB_Apellido.Text;
            aspirante.Correo = TB_Correo.Text;
            aspirante.Usuario = TB_Usuario.Text;
            aspirante.Identificacion = TB_Identificacion.Text;
            aspirante.Contrasena = TB_Contraseña.Text;
            new DAO_Aspirante().agregarUsuario(aspirante);
           
        }
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('USUARIO REGISTRADO');</script>");
    }       
       
    /*protected void TB_Fecha_TextChanged(object sender, EventArgs e)
    {
        L_Edad.Text = DateTime.Now.AddYears(DateTime.Parse(TB_Fecha.Text).Year * -1).Year.ToString();
    }*/
}