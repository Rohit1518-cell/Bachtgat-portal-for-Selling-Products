<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Visitor_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    .style11
    {
        width: 80%;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="0" cellspacing="0" class="style2">


    <tr>
    <td>
        <asp:ImageButton ID="ImageButton1" runat="server"  
            ImageUrl="~/Image/home12.png" Height="350px" Width="100%" />
        </td>
    
    
    </tr>
    <tr>
    <td align="center">
        <table align="center" cellpadding="9" cellspacing="9" class="style11">
            <tr>
                <td>
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Image/i1.png" Height="200px" 
                        Width="400px" />
                </td>
                <td>
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Image/i2.png" Height="200px" 
                        Width="400px" />
                </td>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Image/i3.png" Height="200px" 
                        Width="400px" />
                </td>
            </tr>
        </table>
        </td>
    </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


