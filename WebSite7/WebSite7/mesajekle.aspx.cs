﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mesajekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ObjectDataSource1.Insert();
        Label1.Text = "Kayıt başarıyla yapıldı.";
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }
}