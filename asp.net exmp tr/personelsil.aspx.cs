using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personelsil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void UpdateCancelButton_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridView2.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView2.SelectedDataKey.Value.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }
}