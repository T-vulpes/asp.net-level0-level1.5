<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajlar.aspx.cs" Inherits="mesajlar" %>

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
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <strong>
        <br class="style1" />
        <br class="style1" />
        <span class="style1">TÜM MESAJLAR<br />
        <br />
        </span>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataSet1TableAdapters.mesajlarTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="adisoyadi" Type="String" />
                <asp:Parameter Name="Mail" Type="String" />
                <asp:Parameter Name="Telefon" Type="String" />
                <asp:Parameter Name="Konu" Type="String" />
                <asp:Parameter Name="Not" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adisoyadi" Type="String" />
                <asp:Parameter Name="Mail" Type="String" />
                <asp:Parameter Name="Telefon" Type="String" />
                <asp:Parameter Name="Konu" Type="String" />
                <asp:Parameter Name="Not" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        </strong>
      <center style="text-align: center">&nbsp;
      <center><asp:GridView ID="GridView1" 
              runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="ObjectDataSource1" Width="614px" 
              BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="adisoyadi" HeaderText="adisoyadi" 
                    SortExpression="adisoyadi" />
                <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                <asp:BoundField DataField="Telefon" HeaderText="Telefon" 
                    SortExpression="Telefon" />
                <asp:BoundField DataField="Konu" HeaderText="Konu" SortExpression="Konu" />
                <asp:BoundField DataField="Not" HeaderText="Not" SortExpression="Not" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView></center>
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GİRİŞ" 
              Width="103px" />
        <br />
    </div>
    </form>
</body>
</html>
