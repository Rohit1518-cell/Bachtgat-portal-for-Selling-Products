<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Bachatgat Details.aspx.cs" Inherits="Visitor_Bachatgat_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 80%;
            height: 10%;
        }
        .style14
        {
            width: 100%;
            height: 10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style13">
        <tr>
            <td>
                BACHATGAT DETAILS</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Regid" 
                    DataSourceID="SqlDataSource2" RepeatColumns="1">
                    <ItemTemplate>
                        Regid:
                        <asp:Label ID="RegidLabel" runat="server" Text='<%# Eval("Regid") %>' />
<br />
                        Regdate:
                        <asp:Label ID="RegdateLabel" runat="server" Text='<%# Eval("Regdate") %>' />
                        <br />
                        Bachatgatname:
                        <asp:Label ID="BachatgatnameLabel" runat="server" 
                            Text='<%# Eval("Bachatgatname") %>' />
                        <br />
                        Numberofpersons:
                        <asp:Label ID="NumberofpersonsLabel" runat="server" 
                            Text='<%# Eval("Numberofpersons") %>' />
                        <br />
                        Contactperson:
                        <asp:Label ID="ContactpersonLabel" runat="server" 
                            Text='<%# Eval("Contactperson") %>' />
                        <br />
                        Contactnumber:
                        <asp:Label ID="ContactnumberLabel" runat="server" 
                            Text='<%# Eval("Contactnumber") %>' />
                        <br />
                        Email:
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        <br />
                        City:
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        <br />
                        Taluka:
                        <asp:Label ID="TalukaLabel" runat="server" Text='<%# Eval("Taluka") %>' />
                        <br />
                        District:
                        <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                        <br />
                        Keyskill:
                        <asp:Label ID="KeyskillLabel" runat="server" Text='<%# Eval("Keyskill") %>' />
                        <br />
                        Product:
                        <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                        <br />
                        IFSCCode:
                        <asp:Label ID="IFSCCodeLabel" runat="server" Text='<%# Eval("IFSCCode") %>' />
                        <br />
                        Bankname:
                        <asp:Label ID="BanknameLabel" runat="server" Text='<%# Eval("Bankname") %>' />
                        <br />
                        ACCnumber:
                        <asp:Label ID="ACCnumberLabel" runat="server" Text='<%# Eval("ACCnumber") %>' />
                        <br />
                        Username:
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        <br />
                        Password:
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        <br />
                        Photo:
                        <asp:Label ID="PhotoLabel" runat="server" Text='<%# Eval("Photo") %>' />
                        <br />
                        Approved:
                        <asp:Label ID="ApprovedLabel" runat="server" Text='<%# Eval("Approved") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Registration] WHERE ([Regid] = @Regid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Regid" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [Registration] WHERE ([Bachatgatname] LIKE '%' + @Bachatgatname + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="Bachatgatname" SessionField="Regid" Type="String" />
                    </SelectParameters>
                   
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

