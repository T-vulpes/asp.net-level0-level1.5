<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajekle.aspx.cs" Inherits="mesajekle" %>

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
            width: 40%;
        }
        .style3
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center">
    
        <strong>
        <br />
        <br />
        <br />
        MESAJ EKLEME<br />
        <br />
        <table align="center" class="style2">
            <tr>
                <td>
                    Adı Soyadı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Telefon:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Konu:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="AccessDataSource1" DataTextField="konu" DataValueField="konu" 
                        Height="23px" Width="134px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Not:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="K A Y D E T" Width="128px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataSet1TableAdapters.mesajlarTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="adisoyadi" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Mail" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="Telefon" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Konu" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="Not" PropertyName="Text" 
                    Type="String" />
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
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Giriş Paneli" Width="128px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p style="margin-left: 40px">
            <br />
        </p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ziyaretci.accdb" 
            SelectCommand="SELECT DISTINCT [konu] FROM [konular]">
        </asp:AccessDataSource>
        <br />
        <br />
        </strong>
       <center style="text-align: left"> 
           <br />
           <br />
           <br />
      
    
    </div>
    </form>
</body>
</html>
