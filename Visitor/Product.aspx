<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Visitor_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 90%;
        }
        .style14
        {
            width: 90%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style13">
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="3" RepeatDirection="Horizontal" Width="90%">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="0" class="style14">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                                        Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("Pname") %>' Height="106px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="241px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Rs.<asp:Label ID="Label2" runat="server" 
                                        style="color: #CC3300; font-weight: 700" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="30px" 
                                        style="color: #FFFFFF; font-weight: 700; background-color: #CC3300" 
                                        Text="ADD TO CART" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Pname], [Photo], [Price] FROM [Product]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

