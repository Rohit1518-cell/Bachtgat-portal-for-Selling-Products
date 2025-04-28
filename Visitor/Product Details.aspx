<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Product Details.aspx.cs" Inherits="Visitor_Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 100%;
            height: 100%;
        }
        .style15
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" width="70%">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" 
                    DataSourceID="SqlDataSource2" CellPadding="5" CellSpacing="2" 
                    RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" cellpadding="4" cellspacing="2" class="style14" 
                            style="border: thin solid #C0C0C0">
                            <tr>
                                <td class="style15">
                                    <asp:Label ID="Label2" runat="server" 
                                        style="color: #660066; font-weight: 700; font-size: large" 
                                        Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    <asp:Image ID="Image8" runat="server" Height="141px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="213px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    Price: Rs.<asp:Label ID="Label3" runat="server" style="color: #CC0000" 
                                        Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    <asp:Label ID="Label4" runat="server" Height="30px" style="text-align: center" 
                                        Text='<%# Eval("Specification") %>' Width="400px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Bachatgat Name:
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Bachatgatname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderColor="#FF6600" 
                                        BorderStyle="None" Height="30px" onclick="Button1_Click" 
                                        PostBackUrl="~/Visitor/Customer Login.aspx" 
                                        style="color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif; background-color: #FF6600" 
                                        Text="Place Order" Width="180px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([Catname] LIKE '%' + @Catname + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="Catname" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

