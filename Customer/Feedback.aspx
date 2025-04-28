<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer master.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" style="height: 281px; width: 444px">
        <tr>
            <td align="center" axis="FEEDBACK" 
                style="font-weight: 700; text-decoration: underline;">
                FEEDBACK MESSAGE</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="txtcustname" runat="server" Height="30px" 
                    ontextchanged="txtcustname_TextChanged" Width="200px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="txtfeedbackmsg" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnsubmit" runat="server" Height="30px" 
                    onclick="btnsubmit_Click" Text="Submit" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>


