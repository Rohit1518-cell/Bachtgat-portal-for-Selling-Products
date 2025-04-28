<%@ Page Title="" Language="C#" MasterPageFile="~/Bachatgat/Bachatgat master.master" AutoEventWireup="true" CodeFile="Update profile.aspx.cs" Inherits="Bachatgat_Update_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 36px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td colspan="2" bgcolor="#CCCCCC">
                UPDATE&nbsp; PROFILE</td>
        </tr>
        <tr>
            <td>
                Registration id</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Registration Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Bachatgat Name</td>
            <td>
                <asp:TextBox ID="txtbachatgatname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Number of Persons</td>
            <td>
                <asp:TextBox ID="txtnumberofperson" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact&nbsp; Person Name</td>
            <td>
                <asp:TextBox ID="txtcontactperson" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number</td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Village/City</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Taluka</td>
            <td>
                <asp:TextBox ID="txttaluka" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                District</td>
            <td>
                <asp:TextBox ID="txtdistrict" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Photo</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="85px" Width="162px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="upload" runat="server" BackColor="Black" BorderStyle="None" 
                    ForeColor="White" Height="30px" onclick="upload_Click" style="font-weight: 700" 
                    Text="Upload" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                Keyskills</td>
            <td>
                <asp:TextBox ID="txtkeyskills" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product</td>
            <td>
                <asp:TextBox ID="txtproduct" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Account Details</td>
            <td>
                IFSC Code&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcode" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                Bank Name&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtbankname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                A\C Number&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaccnumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BackColor="Black" BorderStyle="None" 
                    ForeColor="White" Height="30px" onclick="btnsave_Click" 
                    style="font-weight: 700" Text="Save" Width="150px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Black" BorderStyle="None" 
                    ForeColor="White" Height="30px" style="font-weight: 700" Text="Update" 
                    Width="150px" onclick="btnupdate_Click" />
            </td>
        </tr>
    </table>
</asp:Content>



