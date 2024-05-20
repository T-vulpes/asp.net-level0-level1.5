<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFFFF;
        }
        .style2
        {
            color: #CC0000;
            font-size: x-large;
            background-color: #3366CC;
        }
        .style3
        {
            color: #CC0000;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .style4
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <strong>
        <br class="style1" />
        <span class="style3">PERSONEL</span><span class="style2"> </span>
        <span class="style3">BİLGİSİ</span></strong><br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style4" 
            ForeColor="Black" onclick="LinkButton1_Click">Tüm Personeller</asp:LinkButton>
        <br class="style4" />
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style4" 
            ForeColor="Black" onclick="LinkButton2_Click">Personel Kaydı</asp:LinkButton>
        <br class="style4" />
        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="style4" 
            ForeColor="Black" onclick="LinkButton3_Click">Personel Kayıt Silme</asp:LinkButton>
        <br class="style4" />
        <asp:LinkButton ID="LinkButton6" runat="server" CssClass="style4" 
            ForeColor="Black" onclick="LinkButton6_Click">Personel Kayıt Güncelleme</asp:LinkButton>
        <br class="style4" />
        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="style4" 
            ForeColor="Black" onclick="LinkButton5_Click">Personel Kayıt Arama</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
