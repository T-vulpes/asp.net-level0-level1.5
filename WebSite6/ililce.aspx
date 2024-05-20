<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ililce.aspx.cs" Inherits="ililce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    İl:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource1" DataTextField="il" DataValueField="il">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    İlçe:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource2" DataTextField="ilce" DataValueField="ilce">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/sirket.accdb" 
            SelectCommand="SELECT DISTINCT [il] FROM [iller]"></asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/sirket.accdb" 
            SelectCommand="SELECT [ilce] FROM [iller] WHERE ([il] LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="il" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
