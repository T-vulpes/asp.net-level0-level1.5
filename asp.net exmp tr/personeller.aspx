<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personeller.aspx.cs" Inherits="personeller" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center">
    
        <strong>
        <br />
        <span class="style2">TÜM PERSONELLER<br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataSet1TableAdapters.personelTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_personelid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="personeladi" Type="String" />
                <asp:Parameter Name="personelsoyadi" Type="String" />
                <asp:Parameter Name="tckimlik" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="departman" Type="String" />
                <asp:Parameter Name="brans" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="personeladi" Type="String" />
                <asp:Parameter Name="personelsoyadi" Type="String" />
                <asp:Parameter Name="tckimlik" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="departman" Type="String" />
                <asp:Parameter Name="brans" Type="String" />
                <asp:Parameter Name="Original_personelid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        </span>
        <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="personelid" DataSourceID="ObjectDataSource1" Height="313px" 
            Width="1011px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
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
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="departman" HeaderText="departman" 
                    SortExpression="departman" />
                <asp:BoundField DataField="brans" HeaderText="brans" SortExpression="brans" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Giriş Paneli" Width="128px" BackColor="#CC0000" ForeColor="White" />
        </center>
        </strong>
    
    </div>
    </form>
</body>
</html>
