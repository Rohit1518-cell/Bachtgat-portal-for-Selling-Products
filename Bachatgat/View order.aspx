<%@ Page Title="" Language="C#" MasterPageFile="~/Bachatgat/Bachatgat master.master" AutoEventWireup="true" CodeFile="View order.aspx.cs" Inherits="Bachatgat_View_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="style12">
        <tr>
            <td style="text-align: center; font-size: x-large; color: #800000">
                View Orders<hr noshade="noshade" size="2" 
                    style="margin-bottom: 0px; background-color: #800000" width="700" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" 
                    Height="290px" Width="804px">
                    <Columns>
                        <asp:BoundField DataField="Custname" HeaderText="Custname" 
                            SortExpression="Custname" />
                        <asp:BoundField DataField="Pdate" HeaderText="Pdate" SortExpression="Pdate" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Payamt" HeaderText="Payamt" 
                            SortExpression="Payamt" />
                        <asp:BoundField DataField="Paymode" HeaderText="Paymode" 
                            SortExpression="Paymode" />
                        <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [bachatgatorder]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

