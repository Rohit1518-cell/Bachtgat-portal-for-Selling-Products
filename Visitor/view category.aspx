<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="view category.aspx.cs" Inherits="Visitor_view_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 80%;
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
    <br />
    <table align="center" cellpadding="5" cellspacing="0" class="style13">
        <tr>
            <td style="font-size: x-large; font-weight: 700">
                Product Category-----&gt;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="20" CellSpacing="10" 
                    DataKeyField="Catid" DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" cellpadding="7" cellspacing="0" 
    class="style14">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                                        Text='<%# Eval("Catname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("Catname") %>' Height="86px" 
                                        ImageUrl='<%# Eval("Image") %>' onclick="ImageButton1_Click" Width="200px" />
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>

