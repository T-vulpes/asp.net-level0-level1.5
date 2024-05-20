using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personelkayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ObjectDataSource1.Insert();
        Label1.Text = "Kayıt başarıyla yapıldı.";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }
}