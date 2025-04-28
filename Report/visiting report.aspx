<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="visiting report.aspx.cs" Inherits="Report_date_wise_enquiry" %>

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
            <td style="text-align: center; font-weight: 700">
                Visiting Report</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                    Font-Size="12pt" Height="30px">
                </asp:DropDownList>
&nbsp;-
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
                    Font-Size="12pt" Height="30px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="12pt" 
                    Height="30px" Text="Button" />
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
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

