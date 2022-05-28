using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

public partial class Vista_Aplicar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aspirante"] == null)
            Response.Redirect("login1.aspx");
        if (((Aspirante)Session["aspirante"]).Rol != 3)
            Response.Redirect("1ogin1.aspx");
    }

    protected void gvTablaUno_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvTablaUno_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int selectedRowIndex = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            int id = Convert.ToInt32(gvTablaUno.DataKeys[selectedRowIndex]["id"]);
            string empresaID = gvTablaUno.DataKeys[selectedRowIndex]["empresaID"].ToString();
            string Titulo = gvTablaUno.DataKeys[selectedRowIndex]["Titulo"].ToString();
            string Descripcion = gvTablaUno.DataKeys[selectedRowIndex]["Descripcion"].ToString();
            string Municipio = gvTablaUno.DataKeys[selectedRowIndex]["Municipio"].ToString();
            int Salario = Convert.ToInt32(gvTablaUno.DataKeys[selectedRowIndex]["Salario"]);
            string id_oferta = gvTablaUno.DataKeys[selectedRowIndex]["id_oferta"].ToString();
            string Nombre = gvTablaUno.DataKeys[selectedRowIndex]["Nombre"].ToString();
            
            //string ofertaID = gvTablaUno.DataKeys[selectedRowIndex]["ofertaID"].ToString();

            //mostrar datos
            L_CapturarInfo.Text = "¡"+((Aspirante)Session["aspirante"]).Nombre+"!";
            L_MensajeLabor.Text = "Aplicará a: " + Titulo;
            L_MensajeLugar.Text = "En : " + Municipio;
            L_MensajeSalario.Text = "Salario de: " + "$"+Salario;

            //cap datos bajo codigo
            L_CapturarInfoNom.Text = ((Aspirante)Session["aspirante"]).Nombre;
            L_CapturarInfoApe.Text = ((Aspirante)Session["aspirante"]).Apellido;
            L_CapturarInfoCor.Text = ((Aspirante)Session["aspirante"]).Correo;
            L_CapturarInfoIde.Text = ((Aspirante)Session["aspirante"]).Identificacion;
            L_idOferta.Text = ""+id_oferta;
            L_EmpresaId.Text = ""+empresaID;
            //L_idOferta1.Text = ""+ofertaID;
        }
    }

    protected void B_Aplicar_Click(object sender, EventArgs e)
    {
        Aplicar aplicar = new Aplicar();     
        aplicar.Nombre = L_CapturarInfoNom.Text ;
        aplicar.Apellido = L_CapturarInfoApe.Text;
        aplicar.Correo = L_CapturarInfoCor.Text;
        aplicar.Id_empresa = L_EmpresaId.Text;
        aplicar.Id_oferta = L_idOferta.Text;
        aplicar.UserId = L_CapturarInfoIde.Text;
        new DAO_Aplicar().agregarAplicacion(aplicar);
        Response.Redirect("Aplicar.aspx");
    }



    protected void gvTablaUno_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}