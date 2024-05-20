<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajsil.aspx.cs" Inherits="mesajsil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; color: #CC0000; font-weight: 700">
    
        <br />
        <br />
        MESAJ SİLME<br />
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
        <center>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" 
            Width="660px" onselectedindexchanged="GridView1_SelectedIndexChanged">
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
        </asp:GridView>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Visible="True" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Giriş Paneli" Width="127px" />
            <br />
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
            <br />
            <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" 
                GridLines="Both" onitemdeleted="FormView1_ItemDeleted">
                <EditItemTemplate>
                    Silmek istediğinize emin misiniz ?<br />&nbsp;<asp:LinkButton ID="UpdateButton" 
                        runat="server" CausesValidation="True" CommandName="Delete" Text="Evet" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Hayır" />
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
                    <asp:Label ID="KonuLabel" runat="server" Text='<%# Bind("Konu") %>' />
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
        </center>
    
    </div>
    </form>
</body>
</html>
