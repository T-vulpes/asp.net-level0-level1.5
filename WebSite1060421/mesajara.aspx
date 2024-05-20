<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajara.aspx.cs" Inherits="mesajara" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
        }
        .style2
        {
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <span class="style2"><strong>MESAJ ARAMA</strong></span><br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="25px" onclick="Button3_Click" 
            Text="Adı Soyadına Göre" Width="128px" />
&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Mail Adresine Göre" Width="128px" />
&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Telefon Numarasına Göre" Width="174px" />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td>
                        Adı Soyadına göre:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="A R A" Width="128px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ziyaretci.accdb" 
            
    SelectCommand="SELECT * FROM [mesajlar] WHERE ([adisoyadi] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="adisoyadi" PropertyName="Text" 
                    Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" 
            Height="147px" Width="554px">
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
                </asp:GridView>
            </center>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td>
                        Mail adresine göre:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="A R A" Width="128px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/ziyaretci.accdb" 
                SelectCommand="SELECT * FROM [mesajlar] WHERE ([Mail] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Mail2" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource2" 
                Width="545px">
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
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td>
                        Telefon numarasına göre:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="A R A" Width="128px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                DataFile="~/App_Data/ziyaretci.accdb" 
                SelectCommand="SELECT * FROM [mesajlar] WHERE ([Telefon] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="Telefon" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource3" 
                Width="499px">
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
            </asp:GridView>
        </asp:Panel>
        <center>
           <br />
           <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
               Text="GİRİŞ PANELİ" Width="129px" />
        </center> 
    
    </div>
    </form>
</body>
</html>
