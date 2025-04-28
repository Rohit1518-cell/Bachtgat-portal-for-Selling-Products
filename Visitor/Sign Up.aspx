<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Sign Up.aspx.cs" Inherits="Visitor_Sign_Up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            
        }
        .style11
        {
           
            
            background-color: #CCCCCC;
        }
    .style12
    {
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="7" cellspacing="5" class="" 
        width="80%">
    <tr>
        <td colspan="2" style="font-size: medium">
                &nbsp;<br />
                <br />
                <span class="style12">Create an Account&nbsp;</span></td>
    </tr>
    <tr>
        <td>
            <table align="center" cellpadding="12" cellspacing="0" bgcolor="#CCCCCC">
                <tr>
                    <td>
                        <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000" width="200" />
                    </td>
                    <td colspan="2">
                            Register Account</td>
                    <td>
                        <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000" width="230" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                            Name</td>
                    <td colspan="2">
                            Email Address</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                            Password</td>
                    <td colspan="2">
                            Confirm Password</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderStyle="None" 
                                Height="35px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700; color: #FFFFFF" 
                                Text="Submit" Width="250px" />
                    </td>
                    <td colspan="2">
                            &nbsp;</td>
                </tr>
            </table>
        </td>
        <td valign="top">
            <table align="center" cellpadding="7" cellspacing="0">
                <tr>
                    <td>
                        <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000; width: 200px;" 
                                width="250" />
                    </td>
                    <td colspan="2">
                            Sign In Using</td>
                    <td>
                        <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000" width="240" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="padding: 20px">
                           
                            If you have an existing account with any of the following sites you can login 
                            here by clicking on the icon below</td>
                </tr>
                <tr>
                    <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#333333" BorderStyle="None" 
                                Height="35px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700; color: #FFFFFF" 
                                Text="Login" Width="250px" PostBackUrl="~/Visitor/Login.aspx" />
                    </td>
                    <td colspan="2">
                            &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
                <br />
                <br />
        </td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

