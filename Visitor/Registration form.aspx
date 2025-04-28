<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Registration form.aspx.cs" Inherits="Visitor_Registation_form" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 25px;
        }
    .style3
    {
        height: 36px;
    }
        .style4
        {
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="5" width="80%">
        <tr>
            <td colspan="3" style="font-weight: 700; font-size: x-large;">
                <br />
                Sell On Bachatgat Portal<br />
            </td>
            <td colspan="3" 
                style="font-weight: 700; font-size: x-large; text-align: center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#009999" 
                    BorderColor="#009999" BorderStyle="None" Height="43px" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF; font-size: large" 
                    Text="Login For Bachatgat" PostBackUrl="~/Visitor/Bachatgat Login.aspx" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                We work with batchagats to contemporize and showcase 
                their beautiful work to the world. If you would like to sell your products on 
                Engrave, fill out the short form below and we will get in touch with you and 
                help get you onboard.</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                            <hr noshade="noshade" size="1" 
                                style="color: #FF6600; background-color: #FF0000" 
                    width="100%" />
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Registation id</td>
            <td>
                <asp:TextBox ID="txtregistationid" runat="server" Height="30px" Width="200px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td colspan="2">
                Registation date</td>
            <td>
                <asp:TextBox ID="txtregistationdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtregistationdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtregistationdate">
                </cc1:CalendarExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Bachatgat Name</td>
            <td>
                <asp:TextBox ID="txtbachatgatname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                Number of Persons</td>
            <td>
                <asp:TextBox ID="txtnumberofpersons" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Contact Person Name&nbsp; (Head)</td>
            <td class="style2">
                <asp:TextBox ID="txtcontactpersonename" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style2" colspan="2">
                Contact Number</td>
            <td class="style2">
                <asp:TextBox ID="txtcontactnumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcontactnumber" 
                    ErrorMessage="*" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="incorrect email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td colspan="2">
                Village/City</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                District</td>
            <td>
                <asp:TextBox ID="txtdistrict" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                Taluka</td>
            <td>
                <asp:TextBox ID="txttaluka" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Keyskills</td>
            <td>
                <asp:TextBox ID="txtkeyskills" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                Products</td>
            <td>
                <asp:TextBox ID="txtproduct" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                Passward</td>
            <td>
                <asp:TextBox ID="txtpassward" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" 
                    ImageUrl="~/Image/event.jpg" />
                <br />
                <br />
            </td>
            <td style="text-align: left" valign="top">
                Select Image<br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
                <asp:Button ID="btnupload" runat="server" BorderStyle="None" Height="34px" 
                    Text="Upload" Width="168px" onclick="btnupload_Click" BackColor="Black" 
                    CssClass="style4" ForeColor="White" />
            </td>
            <td valign="top" colspan="2">
                Account Details</td>
            <td valign="top">
                IFSC Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcode" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <br />
                Bank Details&nbsp;&nbsp;
                <asp:TextBox ID="txtbankdetails" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <br />
                A\C No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtaccno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" BorderStyle="None" Height="41px" 
                    Text="Submit" Width="199px" onclick="btnsubmit_Click" BackColor="Black" 
                    CssClass="style4" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


