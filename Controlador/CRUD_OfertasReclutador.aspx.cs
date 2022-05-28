using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_CRUD_OfertasReclutador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
     
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int selectedRowIndex = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Response.Redirect("asprirantesACadaOferta.aspx");
        }
    }
}