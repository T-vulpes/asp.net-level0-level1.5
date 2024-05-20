<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajsil.aspx.cs" Inherits="mesajsil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/data.mdb" DeleteCommand="DELETE FROM [mesajlar] WHERE [id] = ?" InsertCommand="INSERT INTO [mesajlar] ([id], [ad_soyad], [mail], [konu], [mesaj], [tarih]) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [mesajlar]" UpdateCommand="UPDATE [mesajlar] SET [ad_soyad] = ?, [mail] = ?, [konu] = ?, [mesaj] = ?, [tarih] = ? WHERE [id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
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
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <strong><span class="auto-style1">MESAJ SİLME</span></strong><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Height="191px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="560px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/data.mdb" DeleteCommand="DELETE FROM [mesajlar] WHERE [id] = ?" InsertCommand="INSERT INTO [mesajlar] ([id], [ad_soyad], [mail], [konu], [mesaj], [tarih]) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [mesajlar] WHERE ([id] = ?)" UpdateCommand="UPDATE [mesajlar] SET [ad_soyad] = ?, [mail] = ?, [konu] = ?, [mesaj] = ?, [tarih] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="konu" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="konu" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" OnItemDeleted="FormView1_ItemDeleted">
            <EditItemTemplate>
                Silmek istediğinize emin misiniz?<br />&nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Delete" Text="Evet" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" OnClick="UpdateCancelButton_Click" Text="Hayır" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ad_soyad:
                <asp:TextBox ID="ad_soyadTextBox" runat="server" Text='<%# Bind("ad_soyad") %>' />
                <br />
                mail:
                <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                <br />
                konu:
                <asp:TextBox ID="konuTextBox" runat="server" Text='<%# Bind("konu") %>' />
                <br />
                mesaj:
                <asp:TextBox ID="mesajTextBox" runat="server" Text='<%# Bind("mesaj") %>' />
                <br />
                tarih:
                <asp:TextBox ID="tarihTextBox" runat="server" Text='<%# Bind("tarih") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                ad_soyad:
                <asp:Label ID="ad_soyadLabel" runat="server" Text='<%# Bind("ad_soyad") %>' />
                <br />
                mail:
                <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
                <br />
                konu:
                <asp:Label ID="konuLabel" runat="server" Text='<%# Bind("konu") %>' />
                <br />
                mesaj:
                <asp:Label ID="mesajLabel" runat="server" Text='<%# Bind("mesaj") %>' />
                <br />
                tarih:
                <asp:Label ID="tarihLabel" runat="server" Text='<%# Bind("tarih") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
