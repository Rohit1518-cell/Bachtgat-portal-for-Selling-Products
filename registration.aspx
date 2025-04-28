<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 70%;
            height: 100%;
            font-size: x-large;
            border: 2px solid #000000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="4" class="style1">
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="37px" Width="233px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="NAME MUST BE ENTER" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Address</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Height="62px" TextMode="MultiLine" 
                        Width="237px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Height="37px" Width="233px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="INVALID EMAIL" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Age</td>
                <td>
                    <asp:TextBox ID="txtage" runat="server" Height="37px" Width="233px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtage" ErrorMessage="ENTER AGE IN RANGE 18 TO 40" 
                        MaximumValue="40" MinimumValue="18"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile no</td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server" Height="37px" Width="233px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="invalid mobile no" 
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Height="37px" TextMode="Password" 
                        Width="233px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Retype Password</td>
                <td>
                    <asp:TextBox ID="txtretype" runat="server" Height="37px" Width="233px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpassword" ControlToValidate="txtretype" 
                        ErrorMessage="password and retype must match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Height="54px" 
                        style="color: #FFFFFF; font-size: large; background-color: #006666" 
                        Text="Submit" Width="224px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
