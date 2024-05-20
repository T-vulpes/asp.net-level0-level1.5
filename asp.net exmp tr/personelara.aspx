<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelara.aspx.cs" Inherits="personelara" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: x-large;
            color: #CC0000;
        }
        .style3
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <br />
        <br />
        <span class="style2"><strong>PERSONEL KAYDI ARAMA</strong></span><br />
        <br />
        <asp:Button ID="Button1" runat="server" style="text-align: center" 
            Text="Tc Kimlik Numarasına Göre" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Telefon Numarasına Göre" 
            onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Mail Adresine Göre" 
            onclick="Button3_Click" />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td>
                        Tc Kimlik Numarasına Göre:
                    </td>
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
                DataFile="~/App_Data/sirket.accdb" 
                SelectCommand="SELECT * FROM [personel] WHERE ([tckimlik] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="tckimlik" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
           <center> 
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="personelid" DataSourceID="AccessDataSource2" 
                Width="1011px" Height="258px">
                <Columns>
                    <asp:BoundField DataField="personelid" HeaderText="personelid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="personelid" />
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
               <br />
            </center>
        </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style3">
                        Telefon Numarasına Göre:
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button8" runat="server" Text="A R A" Width="128px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
                DataFile="~/App_Data/sirket.accdb" 
                SelectCommand="SELECT * FROM [personel] WHERE ([telefon] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="telefon" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <center>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="personelid" DataSourceID="AccessDataSource4" 
                Width="1011px" Height="258px">
                    <Columns>
                        <asp:BoundField DataField="personelid" HeaderText="personelid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="personelid" />
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
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td>
                        Mail Adresine Göre:
                    </td>
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
                DataFile="~/App_Data/sirket.accdb" 
                SelectCommand="SELECT * FROM [personel] WHERE ([mail] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="mail" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <center>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="personelid" DataSourceID="AccessDataSource3" 
                Width="1011px" Height="258px">
                    <Columns>
                        <asp:BoundField DataField="personelid" HeaderText="personelid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="personelid" />
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
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" BackColor="#CC0000" ForeColor="White" 
            Height="27px" onclick="Button9_Click1" Text="Giriş Paneli" Width="128px" />
        <br />
    
    </div>
    </form>
</body>
</html>
