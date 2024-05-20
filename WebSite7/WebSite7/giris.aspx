<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <strong><span class="auto-style1">ZİYARETÇİ DEFTERİ<br />
        <br />
        </span>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Tüm Mesajları Görüntüle</asp:LinkButton>
        <br />
        </strong>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Yeni Mesaj Ekle</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Mesaj Sil</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Mesaj Güncelle</asp:LinkButton>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
