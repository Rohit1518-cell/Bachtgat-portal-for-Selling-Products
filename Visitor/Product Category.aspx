<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="product category.aspx.cs" Inherits="Visitor_product_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 80%;
        }
        .style14
        {
            width: 100%;
            border-left: 1px solid #A0A0A0;
            border-right-style: solid;
            border-right-width: 1px;
            border-top: 1px solid #A0A0A0;
            border-bottom-style: solid;
            border-bottom-width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="0" class="style13">
        <tr>
            <td>
                Product Category</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="10" CellSpacing="5" 
                    DataKeyField="Catid" DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="0" 
    class="style14">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Catname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("Catname") %>' Height="94px" 
                                        ImageUrl='<%# Eval("Image") %>' onclick="ImageButton1_Click" Width="199px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

