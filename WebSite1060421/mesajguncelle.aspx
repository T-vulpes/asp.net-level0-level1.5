<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajguncelle.aspx.cs" Inherits="mesajguncelle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
            font-weight: 700;
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br />
    MESAJ GÜNCELLEME<br />
    <br />
   <center> 
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" 
        Width="588px" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ziyaretci.accdb" 
        DeleteCommand="DELETE FROM [mesajlar] WHERE [id] = ?" 
        InsertCommand="INSERT INTO [mesajlar] ([id], [adisoyadi], [Mail], [Telefon], [Konu], [Not]) VALUES (?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [mesajlar]" 
        UpdateCommand="UPDATE [mesajlar] SET [adisoyadi] = ?, [Mail] = ?, [Telefon] = ?, [Konu] = ?, [Not] = ? WHERE [id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
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
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/ziyaretci.accdb" 
        DeleteCommand="DELETE FROM [mesajlar] WHERE [id] = ?" 
        InsertCommand="INSERT INTO [mesajlar] ([id], [adisoyadi], [Mail], [Telefon], [Konu], [Not]) VALUES (?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [mesajlar] WHERE ([id] = ?)" 
        UpdateCommand="UPDATE [mesajlar] SET [adisoyadi] = ?, [Mail] = ?, [Telefon] = ?, [Konu] = ?, [Not] = ? WHERE [id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="adisoyadi" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="Telefon" Type="String" />
            <asp:Parameter Name="Konu" Type="String" />
            <asp:Parameter Name="Not" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="adisoyadi" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="Telefon" Type="String" />
            <asp:Parameter Name="Konu" Type="String" />
            <asp:Parameter Name="Not" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" 
        GridLines="Both" onitemupdated="FormView1_ItemUpdated" 
        onpageindexchanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            adisoyadi:
            <asp:TextBox ID="adisoyadiTextBox" runat="server" 
                Text='<%# Bind("adisoyadi") %>' />
            <br />
            Mail:
            <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Telefon:
            <asp:TextBox ID="TelefonTextBox" runat="server" Text='<%# Bind("Telefon") %>' />
            <br />
            Konu:
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="AccessDataSource3" DataTextField="konu" DataValueField="konu" 
                Height="16px" SelectedValue='<%# Bind("Konu", "{0}") %>' Width="128px">
            </asp:DropDownList>
            <br />
            Not:
            <asp:TextBox ID="NotTextBox" runat="server" Text='<%# Bind("Not") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Güncelle" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Vazgeç" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            adisoyadi:
            <asp:TextBox ID="adisoyadiTextBox" runat="server" 
                Text='<%# Bind("adisoyadi") %>' />
            <br />
            Mail:
            <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Telefon:
            <asp:TextBox ID="TelefonTextBox" runat="server" Text='<%# Bind("Telefon") %>' />
            <br />
            Konu:
            <asp:TextBox ID="KonuTextBox" runat="server" Text='<%# Bind("Konu") %>' />
            <br />
            Not:
            <asp:TextBox ID="NotTextBox" runat="server" Text='<%# Bind("Not") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            adisoyadi:
            <asp:Label ID="adisoyadiLabel" runat="server" Text='<%# Bind("adisoyadi") %>' />
            <br />
            Mail:
            <asp:Label ID="MailLabel" runat="server" Text='<%# Bind("Mail") %>' />
            <br />
            Telefon:
            <asp:Label ID="TelefonLabel" runat="server" Text='<%# Bind("Telefon") %>' />
            <br />
            Konu:
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="AccessDataSource3" DataTextField="konu" DataValueField="konu" 
                Height="16px" SelectedValue='<%# Bind("Konu", "{0}") %>' Width="114px">
            </asp:DropDownList>
            <br />
            Not:
            <asp:Label ID="NotLabel" runat="server" Text='<%# Bind("Not") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
        DataFile="~/App_Data/ziyaretci.accdb" 
        SelectCommand="SELECT [konu] FROM [konular]"></asp:AccessDataSource>
    <br />
    </form>
</body>
</html>
