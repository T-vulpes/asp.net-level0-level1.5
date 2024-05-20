<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelsil.aspx.cs" Inherits="personelsil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; color: #CC0000; font-size: medium">
    
        <br />
        <br />
        <strong><span class="style1">PERSONEL KAYDI SİLME</span></strong><br />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/sirket.accdb" SelectCommand="SELECT * FROM [personel]">
        </asp:AccessDataSource>
       <center> <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
               BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
               CellPadding="3" DataKeyNames="personelid" DataSourceID="AccessDataSource1" 
               ForeColor="Black" GridLines="Vertical" Height="285px" 
               onselectedindexchanged="GridView2_SelectedIndexChanged" Width="1011px">
           <AlternatingRowStyle BackColor="#CCCCCC" />
           <Columns>
               <asp:CommandField ShowSelectButton="True" />
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
        </asp:GridView></center>
        <br />
       <center> 
           <br />
           <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
           <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
               Text="Giriş Paneli" Width="128px" BackColor="#CC0000" ForeColor="White" />
           <br />
           <br />
           <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
               DataFile="~/App_Data/sirket.accdb" 
               DeleteCommand="DELETE FROM [personel] WHERE [personelid] = ?" 
               InsertCommand="INSERT INTO [personel] ([personelid], [personeladi], [personelsoyadi], [tckimlik], [telefon], [mail], [departman], [brans]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
               SelectCommand="SELECT * FROM [personel] WHERE ([personelid] = ?)" 
               UpdateCommand="UPDATE [personel] SET [personeladi] = ?, [personelsoyadi] = ?, [tckimlik] = ?, [telefon] = ?, [mail] = ?, [departman] = ?, [brans] = ? WHERE [personelid] = ?">
               <DeleteParameters>
                   <asp:Parameter Name="personelid" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="personelid" Type="Int32" />
                   <asp:Parameter Name="personeladi" Type="String" />
                   <asp:Parameter Name="personelsoyadi" Type="String" />
                   <asp:Parameter Name="tckimlik" Type="String" />
                   <asp:Parameter Name="telefon" Type="String" />
                   <asp:Parameter Name="mail" Type="String" />
                   <asp:Parameter Name="departman" Type="String" />
                   <asp:Parameter Name="brans" Type="String" />
               </InsertParameters>
               <SelectParameters>
                   <asp:ControlParameter ControlID="TextBox1" Name="personelid" 
                       PropertyName="Text" Type="Int32" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="personeladi" Type="String" />
                   <asp:Parameter Name="personelsoyadi" Type="String" />
                   <asp:Parameter Name="tckimlik" Type="String" />
                   <asp:Parameter Name="telefon" Type="String" />
                   <asp:Parameter Name="mail" Type="String" />
                   <asp:Parameter Name="departman" Type="String" />
                   <asp:Parameter Name="brans" Type="String" />
                   <asp:Parameter Name="personelid" Type="Int32" />
               </UpdateParameters>
           </asp:AccessDataSource>
           <asp:FormView ID="FormView1" runat="server" BackColor="White" 
               BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
               DataKeyNames="personelid" DataSourceID="AccessDataSource2" DefaultMode="Edit" 
               ForeColor="Black" GridLines="Vertical" onitemdeleted="FormView1_ItemDeleted">
               <EditItemTemplate>
                   Kaydı silmek istediğinize emin misiniz ?<br />&nbsp;<asp:LinkButton 
                       ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Delete" 
                       Text="Evet" />
                   &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                       CausesValidation="False" CommandName="Cancel" 
                       onclick="UpdateCancelButton_Click" Text="Hayır" />
               </EditItemTemplate>
               <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <InsertItemTemplate>
                   personeladi:
                   <asp:TextBox ID="personeladiTextBox" runat="server" 
                       Text='<%# Bind("personeladi") %>' />
                   <br />
                   personelsoyadi:
                   <asp:TextBox ID="personelsoyadiTextBox" runat="server" 
                       Text='<%# Bind("personelsoyadi") %>' />
                   <br />
                   tckimlik:
                   <asp:TextBox ID="tckimlikTextBox" runat="server" 
                       Text='<%# Bind("tckimlik") %>' />
                   <br />
                   telefon:
                   <asp:TextBox ID="telefonTextBox" runat="server" Text='<%# Bind("telefon") %>' />
                   <br />
                   mail:
                   <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                   <br />
                   departman:
                   <asp:TextBox ID="departmanTextBox" runat="server" 
                       Text='<%# Bind("departman") %>' />
                   <br />
                   brans:
                   <asp:TextBox ID="bransTextBox" runat="server" Text='<%# Bind("brans") %>' />
                   <br />
                   <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                       CommandName="Insert" Text="Insert" />
                   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                       CausesValidation="False" CommandName="Cancel" Text="Cancel" />
               </InsertItemTemplate>
               <ItemTemplate>
                   personelid:
                   <asp:Label ID="personelidLabel" runat="server" 
                       Text='<%# Eval("personelid") %>' />
                   <br />
                   personeladi:
                   <asp:Label ID="personeladiLabel" runat="server" 
                       Text='<%# Bind("personeladi") %>' />
                   <br />
                   personelsoyadi:
                   <asp:Label ID="personelsoyadiLabel" runat="server" 
                       Text='<%# Bind("personelsoyadi") %>' />
                   <br />
                   tckimlik:
                   <asp:Label ID="tckimlikLabel" runat="server" Text='<%# Bind("tckimlik") %>' />
                   <br />
                   telefon:
                   <asp:Label ID="telefonLabel" runat="server" Text='<%# Bind("telefon") %>' />
                   <br />
                   mail:
                   <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
                   <br />
                   departman:
                   <asp:Label ID="departmanLabel" runat="server" Text='<%# Bind("departman") %>' />
                   <br />

                   brans:
                   <asp:Label ID="bransLabel" runat="server" Text='<%# Bind("brans") %>' />
                   <br />
                   <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                       CommandName="Edit" Text="Edit" />
                   &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                       CommandName="Delete" Text="Delete" />
                   &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                       CommandName="New" Text="New" />
               </ItemTemplate>
               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
           </asp:FormView>
           <br />
        </center>
    
    </div>
    </form>
</body>
</html>
