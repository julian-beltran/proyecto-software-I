using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Data;
using Npgsql;


public partial class Vista_Registro : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void B_Atras_Click(object sender, EventArgs e)
    {
        Response.Redirect("EleccionDeRol.aspx");
    }

    public bool ExisteT(string cap)
    {
        var entity = con.empresa.SingleOrDefault(c => c.Telefono_Id == cap);
        return entity != null;
    }

    public bool ExisteU(string cap)
    {
        var entity = con.empresa.SingleOrDefault(c => c.Usuario == cap);
        return entity != null;
    }

    public bool ExisteC(string cap)
    {
        var entity = con.empresa.SingleOrDefault(c => c.Correo == cap);
        return entity != null;
    }

    public bool ExisteD(string cap)
    {
        var entity = con.empresa.SingleOrDefault(c => c.Direccion == cap);
        return entity != null;
    }

    Mapeo con = new Mapeo();

    protected void B_Registrar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        Empresa empresa = new Empresa();

        /*string consultar = "select * from datos where telefono = '" + TB_Telefono.Text + "'";
        string agregar = "insert into empresa values (" + TB_Nombre.Text + ",'" + TB_Telefono.Text + "','" + TB_Email.Text + "','" + TB_Direccion.Text +
              "','" + TB_Usuario.Text + "','" + TB_Contraseña.Text + "')";*/

        if (ExisteT(TB_Telefono.Text.Trim()))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Telefono existente";
        }
        else if (ExisteU(TB_Usuario.Text.Trim()))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Usuario existente.";
        }
        else if (ExisteC(TB_Email.Text.Trim()))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Correo existente.";
        }
        else if (ExisteD(TB_Direccion.Text.Trim()))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('YA EXISTE EL REGISTRO');</script>");
            L_Mensaje.Text = "Direccion existente.";
        }
        else
        {
            empresa.Rol = 2;
            empresa.Nombre = TB_Nombre.Text;
            empresa.Telefono_Id = TB_Telefono.Text;
            empresa.Correo = TB_Email.Text;
            empresa.Direccion = TB_Direccion.Text;
            empresa.Usuario = TB_Usuario.Text;
            empresa.Contrasena = TB_Contraseña.Text;
            new DAO_Empresa().agregarEmpresa(empresa);       
        }
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('USUARIO REGISTRADO');</script>");
    }
}


       
    
        
        
     
        
         

