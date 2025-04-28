<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Visitor_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 6px;
            
        background-color: #009999;
            width: 554px;
        }
        .style10
        {
            background-color: #009999;
            width: 554px;
        }
    .style11
    {
        text-align: left;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1"><br />
<br />
<br />
<br />
    <table align="center" cellpadding="10" width="70%" 
    style="border: thin solid #666666; border-radius:10px" cellspacing="0">
        <tr>
            <td style="font-weight: 700; font-size: xx-large; color: #FFFFFF; text-align: center;" 
                class="style10">
                &nbsp;<br />
                Get In Touch&nbsp;<br />
            </td>
            <td style="font-size: x-large;" align="center" rowspan="5">
                <table align="center" cellpadding="5" 
                    style="font-size: medium; height: 344px; width: 56%">
                    <tr>
                        <td>
                            Name</td>
                        <td align="left">
                            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="*" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtmobile" ErrorMessage="*" 
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            subject</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Message</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtmessage" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnsubmit" runat="server" BorderStyle="None" Height="34px" 
                                onclick="btnsubmit_Click" Text="Submit" Width="183px" BackColor="Black" 
                                ForeColor="White" style="font-weight: 700" />
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: justify" class="style10">
               Mahila bachatgat prodcucts marketing or any suggestion or any questions 
                    to ask or enquiry related then please write to us. Bachatgat enquiry can ask 
                    here.</strong>
                    If you have any suggestion then please contact us on.</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Image ID="Image8" runat="server" Height="30px" 
                    ImageUrl="~/Image/email.png" />
&nbsp;Email:- www.mahilabachatgat@.gmail.com</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Image ID="Image9" runat="server" Height="30px" 
                    ImageUrl="~/Image/call.png" />
&nbsp;Contact:- 7769881970</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Image ID="Image10" runat="server" Height="30px" 
                    ImageUrl="~/Image/location1.png" />
&nbsp;Address:- MIDC road kupwad,sangli.</td>
        </tr>
    </table>
<br />
<br />
<br />
<br />
</asp:Content>


