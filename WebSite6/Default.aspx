<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/sirket.accdb" SelectCommand="SELECT * FROM [personel]">
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="personelid" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="personelid" HeaderText="personelid" 
                    InsertVisible="False" ReadOnly="True" SortExpression="personelid" />
                <asp:BoundField DataField="personeladi" HeaderText="personeladi" 
                    SortExpression="personeladi" />
                <asp:BoundField DataField="personelsoyadi" HeaderText="personelsoyadi" 
                    SortExpression="personelsoyadi" />
                <asp:BoundField DataField="tckimlik" HeaderText="tckimlik" 
                    SortExpression="tckimlik" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" 
                    SortExpression="telefon" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
