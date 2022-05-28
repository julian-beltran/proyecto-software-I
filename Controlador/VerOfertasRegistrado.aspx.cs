using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    public partial class Vista_VerOfertasRegistrado : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LB_VerMas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        int selectedRowIndex = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Response.Redirect("aplicar.aspx");
        }
    }
}




