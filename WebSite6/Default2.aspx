<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 131%;
        }
        .style2
        {
            width: 156px;
        }
        .style3
        {
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Adı:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Soyadı:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Tc kimlik:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Telefon:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="SingleLine" Width="128px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Adres</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server" Height="42px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Şehir</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="AccessDataSource1" DataTextField="il" DataValueField="il" 
                    Height="21px" Width="145px">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydet" 
                    Width="128px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">PERSONEL TABLOSU</asp:LinkButton>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/sirket.accdb" 
        SelectCommand="SELECT DISTINCT [il] FROM [iller]"></asp:AccessDataSource>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="DataSet1TableAdapters.personelTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_personelid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="personeladi" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="personelsoyadi" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="tckimlik" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="telefon" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="adres" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="sehir" PropertyName="SelectedValue" 
                Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="personeladi" Type="String" />
            <asp:Parameter Name="personelsoyadi" Type="String" />
            <asp:Parameter Name="tckimlik" Type="String" />
            <asp:Parameter Name="telefon" Type="String" />
            <asp:Parameter Name="adres" Type="String" />
            <asp:Parameter Name="sehir" Type="String" />
            <asp:Parameter Name="Original_personelid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </form>
</body>
</html>
