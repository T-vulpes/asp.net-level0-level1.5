using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mesajsil : System.Web.UI.Page
{
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        // Olay işleyicisinin kodu buraya eklenecek
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void UpdateCancelButton_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedDataKey.Value.ToString();
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }
}