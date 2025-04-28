<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Admin_Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 935px;
        }
        .style3
        {
            width: 1132px;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="2" 
            style="background-image: url('../Image/bg1.jpg')" width="100%">
            <tr>
                <td class="style3" align="center" 
                    style="background-image: url('../Image/background_11.wide.jpg')">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="117px" 
                        ImageUrl="~/Image/administrator.png" Width="127px" />
                    <br />
    <br />
        <table cellpadding="2" style=" width: 500px; height: 250px"; border-radius:10px" align="center" >
            <tr>
                <td style="font-weight: 700; color: #FF9900; font-size: xx-large;" align="center" 
                    class="style6">
                    ADMIN LOGIN</td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="300px" style="border-radius:10px" 
                        CssClass="style6" placeholder="Enter Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center" >
                    <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="300px" style="border-radius:10px"
                        CssClass="style6" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnlogin" runat="server" BackColor="Black" BorderColor="White" 
                        BorderStyle="None" ForeColor="White" Height="35px" onclick="btnlogin_Click1" 
                        style="font-weight: 700; background-color: #FF9900; border-radius:10px" Text="Login" 
                        Width="300px" CssClass="style6" />
                    </td>
            </tr>
        </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
