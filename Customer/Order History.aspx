<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer1.master" AutoEventWireup="true" CodeFile="Order History.aspx.cs" Inherits="Customer_Order_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="style2">
        <tr>
            <td style="text-align: center">
                My Orders<hr noshade="noshade" width="600" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Oid" HeaderText="Oid" SortExpression="Oid" />
                        <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                            SortExpression="Quantity" />
                        <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                            SortExpression="TotalPrice" />
                        <asp:BoundField DataField="Custname" HeaderText="Custname" 
                            SortExpression="Custname" />
                        <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
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
                    SelectCommand="SELECT * FROM [Order] WHERE ([Custname] = @Custname)"
                     DeleteCommand="delete from [order] where [oid]=@oid"
                    >
                    <SelectParameters>
                        <asp:SessionParameter Name="Custname" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

