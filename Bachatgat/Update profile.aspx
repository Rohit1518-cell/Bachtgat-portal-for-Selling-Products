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
            <td colspan="2" bgcolor="#CCCCCC" 
                style="text-align: center; font-size: x-large; color: #800000; background-color: #FFFFFF">
                UPDATE&nbsp; PROFILE<hr 
                    noshade="noshade" size="2" 
                    style="margin-bottom: 0px; background-color: #800000" width="700" />
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" 
                    AutoGenerateRows="False" DataKeyNames="Regid" DataSourceID="SqlDataSource1" 
                    Height="50px" style="color: #003366; text-align: left; font-size: medium" 
                    Width="543px">
                    <Fields>
                        <asp:BoundField DataField="Regid" HeaderText="Regid" ReadOnly="True" 
                            SortExpression="Regid" />
                        <asp:BoundField DataField="Regdate" HeaderText="Regdate" 
                            SortExpression="Regdate" />
                        <asp:BoundField DataField="Bachatgatname" HeaderText="Bachatgatname" 
                            SortExpression="Bachatgatname" />
                        <asp:BoundField DataField="Numberofpersons" HeaderText="Numberofpersons" 
                            SortExpression="Numberofpersons" />
                        <asp:BoundField DataField="Contactperson" HeaderText="Contactperson" 
                            SortExpression="Contactperson" />
                        <asp:BoundField DataField="Contactnumber" HeaderText="Contactnumber" 
                            SortExpression="Contactnumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="District" HeaderText="District" 
                            SortExpression="District" />
                        <asp:BoundField DataField="Product" HeaderText="Product" 
                            SortExpression="Product" />
                        <asp:BoundField DataField="IFSCCode" HeaderText="IFSCCode" 
                            SortExpression="IFSCCode" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="ACCnumber" HeaderText="ACCnumber" 
                            SortExpression="ACCnumber" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Regid], [Regdate], [Bachatgatname], [Numberofpersons], [Contactperson], [Contactnumber], [Email], [City], [District], [Product], [IFSCCode], [Bankname], [ACCnumber], [Username], [Password] FROM [Registration] WHERE ([Username] LIKE '%' + @Username + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="bname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
                <br />
            </td>
        </tr>
    </table>
</asp:Content>



