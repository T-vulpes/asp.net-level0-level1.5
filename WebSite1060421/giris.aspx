<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <span class="style1"><strong>
        <br />
        <br />
        BASİT ZİYARETÇİ DEFTERİ<br />
        <br />
        </strong>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Tüm Mesajlar</asp:LinkButton>
        <br />
        </span>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click1">Mesaj Ekleme</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Mesaj Sil</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Mesaj Güncelleme</asp:LinkButton>
    
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Mesaj Ara</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
