<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Customer Login.aspx.cs" Inherits="Visitor_Customer_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="" width="90%">
        <tr>
            <td colspan="2" style="font-size: medium">
                &nbsp;<br />
                <br />
                <br />
                <span class="style12">&nbsp; Login Or Create an Account&nbsp;<br />
                </span></td>
        </tr>
        <tr>
            <td valign="top">
                <table align="center" cellpadding="12" cellspacing="0" bgcolor="White">
                    <tr>
                        <td>
                            <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000; width: 170px;" 
                                width="200" />
                        </td>
                        <td colspan="2">
                            New Customer</td>
                        <td>
                            <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000" width="170" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="padding: 20px">
                            By creating an account with us, you will be able to move through the checkout 
                            process faster, store multiple shipping addresses, view and track your orders in 
                            your account and more.</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderStyle="None" 
                                Height="35px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700; color: #FFFFFF" 
                                Text="Sign Up" Width="250px" PostBackUrl="~/Visitor/Sign Up.aspx" 
                                onclick="Button1_Click" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table align="center" cellpadding="10" cellspacing="0" bgcolor="#CCCCCC" 
                    width="700" style="height: 350px">
                    <tr>
                        <td>
                            <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000; width: 200px;" 
                                width="250" />
                        </td>
                        <td colspan="2">
                            Registered Customers</td>
                        <td>
                            <hr noshade="noshade" size="1" 
                                style="color: #000000; background-color: #000000" width="240" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" >
                            If you have an account with us, please log in.</td>
                    </tr>
                    <tr>
                        <td colspan="4" >
                            User Name</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:TextBox ID="txtusername" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            Password</td>
                    </tr>
                    <tr>
                        <td colspan="4" >
                            <asp:TextBox ID="txtpassword" runat="server" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" Height="35px" Width="300px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">

                            <asp:Button ID="btnlogin" runat="server" BackColor="#333333" BorderStyle="None" 
                                Height="35px" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700; color: #FFFFFF" 
                                Text="Login" Width="250px" onclick="Button2_Click" />
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
             
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

