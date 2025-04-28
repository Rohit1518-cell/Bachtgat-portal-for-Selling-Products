<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="stock report.aspx.cs" Inherits="Report_stock_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style6">
        <tr>
            <td style="text-align: center">
                <strong>&nbsp;Stock report</strong></td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource5" DataTextField="Catname" DataValueField="Catname" 
                    Font-Bold="True" Font-Size="12pt" Height="33px" Width="239px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Catname] FROM [Product]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Pname] FROM [Order]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Odate] FROM [Order]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Pdate] FROM [bachatgatorder]"></asp:SqlDataSource>
&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="12pt" 
                    Height="30px" Text="Display" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Untitled.jpg" 
                    Width="100%" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" cellpadding="4" 
                    style="border-style: solid; border-width: thin; width: 254px">
                    <tr>
                        <td style="font-weight: 700">
                            Stock Available</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="14"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Order] WHERE ([Pname] = @Pname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Pname" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

