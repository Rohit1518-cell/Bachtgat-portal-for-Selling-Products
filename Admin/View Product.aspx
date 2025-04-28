<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="View Product.aspx.cs" Inherits="Admin_View_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 10px;
        }
        .style3
        {
            height: 28px;
            text-align: center;
            color: #003399;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style2">
        <tr>
            <td bgcolor="White" class="style3">
                <strong>VIEW PRODUCT</strong></td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" 
                    BorderStyle="Double" BorderWidth="1px" CellPadding="3" DataKeyNames="Pid" 
                    DataSourceID="SqlDataSource1" Font-Size="14pt" PageSize="5" Width="925px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" 
                            SortExpression="Pid" />
                        <asp:BoundField DataField="Catname" HeaderText="Catname" 
                            SortExpression="Catname" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" 
                            SortExpression="Weight" />
                        <asp:BoundField DataField="Ingredients" HeaderText="Ingredients" 
                            SortExpression="Ingredients" />
                        <asp:BoundField DataField="Expiraydate" HeaderText="Expiraydate" 
                            SortExpression="Expiraydate" />
                        <asp:BoundField DataField="Specification" HeaderText="Specification" 
                            SortExpression="Specification" />
                        <asp:BoundField DataField="Bachatgatname" SortExpression="Bachatgatname" 
                            HeaderText="Bachatgatname" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

