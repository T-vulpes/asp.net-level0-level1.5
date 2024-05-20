<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelkayit.aspx.cs" Inherits="personelkayit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #CC0000;
        }
        .style2
        {
            width: 48%;
        }
        .style3
        {
            color: #000000;
        }
        .style4
        {
            font-size: large;
        }
        .style5
        {
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; margin-left: 40px">
    
        <br />
        <br />
        <span class="style1"><strong>PERSONEL KAYDI EKLEME<br />
        <br />
        </strong></span><span class="style3">
        <table align="center" class="style2">
            <tr>
                <td class="style4">
                    Personel Adı</td>
                </span><span class="style1">
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Personel Soyadı</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Tc Kimlik</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Telefon</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mail</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Departman</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="AccessDataSource1" DataTextField="departman" 
                        DataValueField="departman" Height="25px" Width="187px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Branş</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" BackColor="#CC0000" ForeColor="White" 
                        Height="27px" onclick="Button1_Click" Text="KAYDET" Width="187px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </span>
        <asp:Button ID="Button2" runat="server" BackColor="#CC0000" ForeColor="White" 
            Height="29px" onclick="Button2_Click" Text="Giriş Paneli" Width="187px" />
        <br />
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
                <asp:ControlParameter ControlID="TextBox5" Name="mail" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="departman" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="brans" PropertyName="Text" 
                    Type="String" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/sirket.accdb" 
            SelectCommand="SELECT [departman] FROM [departmanlar]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
