<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajekle.aspx.cs" Inherits="mesajekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 40%;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style4 {
            width: 239px;
        }
        .auto-style5 {
            height: 33px;
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <strong><span class="auto-style1">YENİ MESAJ EKLEME<br />
        <br />
        </span>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.mesajlarTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ad_soyad" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="mail" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="konu" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="mesaj" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="tarih" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="konu" Type="String" />
                <asp:Parameter Name="mesaj" Type="String" />
                <asp:Parameter Name="tarih" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br /><asp:AccessDataSource ID="a" runat="server" DataFile="~/App_Data/data.mdb" SelectCommand="SELECT [konular] FROM [konular]"></asp:AccessDataSource>
        <table align="center" class="auto-style2">
            <tr>
                <td>Adınız Soyadınız:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>Mailiniz:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>Konu:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="166px" DataSourceID="a" DataTextField="konular" DataValueField="konular">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>Mesaj</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>Tarih:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"><strong>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/indir.png" OnClick="ImageButton1_Click" Width="30px" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="63px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" Width="141px" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">GİRİŞ</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="499px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
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
                </td>
            </tr>
        </table>
        <br />
        </strong>
    
    </div>
    </form>
</body>
</html>
