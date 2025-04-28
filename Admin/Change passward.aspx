<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="Change passward.aspx.cs" Inherits="Admin_Change_passward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td colspan="2" bgcolor="#CCCCCC" style="font-weight: 700">
                CHANGE PASSWORD</td>
        </tr>
        <tr>
            <td>
                Admin Name</td>
            <td>
                <asp:TextBox ID="txtadminname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Old Password</td>
            <td>
                <asp:TextBox ID="txtoldpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btnsubmit_Click" Text="Submit" Width="150px" BackColor="Black" 
                    ForeColor="White" style="font-weight: 700" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btncancel_Click" Text="Cancel" Width="150px" BackColor="Black" 
                    ForeColor="White" style="font-weight: 700" />
            </td>
        </tr>
    </table>
</asp:Content>

