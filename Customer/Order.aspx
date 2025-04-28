<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer master.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Customer_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="7" class="style12">
        <tr>
            <td style="text-align: center; font-weight: 700">
                Order Details<hr noshade="noshade" width="622" />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Oid" HeaderText="Oid" SortExpression="Oid" />
           
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
         
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                SortExpression="TotalPrice" />
            <asp:BoundField DataField="Custname" HeaderText="Custname" 
                SortExpression="Custname" />
            <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
        </Columns>
    </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Order] WHERE ([Custname] LIKE '%' + @Custname + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="Custname" SessionField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

