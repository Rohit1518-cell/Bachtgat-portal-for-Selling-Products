<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Product Detail12.aspx.cs" Inherits="Visitor_Product_Detail12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 90%;
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
    <table cellpadding="5" cellspacing="0" class="style13">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="10" CellSpacing="5" 
                    DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="0" 
    class="style14">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image8" runat="server" Height="98px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="210px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                                        CommandArgument='<%# Eval("Pid") %>' onclick="Button1_Click" 
                                        style="font-weight: 700; background-color: #FF9900" Text="Place Order" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([Catname] = @Catname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Catname" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

