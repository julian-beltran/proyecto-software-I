using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_CambiarContrasena : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void B_EnviarCorreo_Click(object sender, EventArgs e)
    {
        string correo = TB_CorreoCambioContraseña.Text;
        Aspirante asp = new DAO_Aspirante().validarCorreo(correo);
        /*
         * /string correo = TB_CorreoCambioContraseña.Text;
        Empresa emp = new DAO_Empresa().validarCorreo(correo);
        

        if (emp!= null)
        {
            Guid g = Guid.NewGuid();
            emp.Token = g.ToString();
            emp.Token = encriptar(emp.Token);
            emp.Vencimiento_token = DateTime.Now.AddHours(24);
        
            new DAO_Empresa().actualizarUsuario(emp);
            string mensaje = "Por favor ingrese al siguiente link: http://localhost:50601/Vista/RecuperarContrasena.aspx?" + emp.Token;
            new Correo().enviarCorreo(correo, emp.Token, mensaje);

            L_Mensaje.Text = "Se ha enviado un correo electronico al correo: " + correo;
        }
         */

        if (asp != null)
        {
            Guid g = Guid.NewGuid();
            asp.Token = g.ToString();
            asp.Token = encriptar(asp.Token);
            asp.Vencimiento_token = DateTime.Now.AddHours(24);

            new DAO_Aspirante().actualizarUsuario(asp);
            string mensaje = "Por favor ingrese al siguiente link: http://localhost:50601/Vista/RecuperarContrasena.aspx?" + asp.Token;
            new Correo().enviarCorreo(correo, asp.Token, mensaje);

            L_Mensaje.Text = "Se ha enviado un correo electronico al correo: " + correo;
        }
    }

    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();
        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);
        StringBuilder output = new StringBuilder();
        for (int i = 0; i < hashedBytes.Length; i++)
        output.Append(hashedBytes[i].ToString("x2").ToLower());
        return output.ToString();
    }
}