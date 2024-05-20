<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajgoruntule.aspx.cs" Inherits="mesajgoruntule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <strong>TÜM MESAJLAR<br />
        </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="177px" Width="615px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="ad_soyad" HeaderText="ad_soyad" SortExpression="ad_soyad" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="konu" HeaderText="konu" SortExpression="konu" />
                <asp:BoundField DataField="mesaj" HeaderText="mesaj" SortExpression="mesaj" />
                <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.mesajlarTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="konu" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="konu" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
