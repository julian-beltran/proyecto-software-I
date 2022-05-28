using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_CrearOferta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["empresa"] == null)
            Response.Redirect("Login.aspx");
        if (((Empresa)Session["empresa"]).Rol != 2)
            Response.Redirect("Login.aspx");

        Random aleatorio = new Random();
        int numero;
        numero = aleatorio.Next(100, 10000001);
        string num = "OFER"+numero;
        L_codigo.Text = num;
    }

   

    protected void B_CrearOferta_Click(object sender, EventArgs e)
    {
        Empresa emp = new Empresa();
        Ofertas ofertas = new Ofertas();
        ofertas.Titulo = TB_TituloEmpleo.Text;
        ofertas.Descripcion = TB_Descripcion.Text;
        ofertas.Municipio = DDL_Municipio.Text;
        ofertas.Salario = int.Parse(TB_Salario.Text);
        ofertas.Nombre = ((Empresa)Session["empresa"]).Nombre;
        ofertas.empresaID=((Empresa)Session["empresa"]).Telefono_Id;
        ofertas.Id_oferta = L_codigo.Text;
        new DAO_Ofertas().agregarOferta(ofertas);
        Response.Redirect("Reclutador.aspx");
    }

    protected void TB_Salario_TextChanged(object sender, EventArgs e)
    {

    }
}