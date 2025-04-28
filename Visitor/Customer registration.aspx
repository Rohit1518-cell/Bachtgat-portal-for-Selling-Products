<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Customer registration.aspx.cs" Inherits="Visitor_Customer_registation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td colspan="2" bgcolor="#CCCCCC" style="font-weight: 700">
                REGISTATION (Customer)</td>
        </tr>
        <tr>
            <td>
                Customer Name</td>
            <td>
                <asp:TextBox ID="txtcustomername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mobile</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="enter10 digit mobile number" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="incorrect email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                User Name</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Passward</td>
            <td>
                <asp:TextBox ID="txtpassward" runat="server" Height="30px" Width="200px"></asp:TextBox>
                _</td>
        </tr>
        <tr>
            <td>
                Confirm Passward</td>
            <td>
                <asp:TextBox ID="txtconfirmpassward" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="btnsubmit" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btnsubmit_Click1" Text="Submit" Width="150px" BackColor="Black" 
                    ForeColor="White" style="font-weight: 700" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

