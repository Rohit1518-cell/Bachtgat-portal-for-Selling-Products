<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Visitor_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 100%;
        }
        .style13
        {
            width: 100%;
            height: 0;
        }
        .style14
    {
        color: #800000;
        font-size: large;
    }
        </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <table cellpadding="3" cellspacing="2" class="style13">
                    <tr>
                        <td>
                            Select Village\City to view
                            <br />
                            Bachatgat Profiles</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Village\ City</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" Height="35px" Width="200px" 
                                AutoPostBack="True"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderStyle="None" 
                                Height="35px" 
                                style="font-size: medium; color: #FFFFFF; border-radius:10px" Text="Apply" 
                                Width="200px" onclick="Button2_Click" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <table align="center" cellpadding="3" 
                                style="border: medium dashed #999999; height: 258px;border-radius:10px" 
                                width="400">
                                <tr>
                                    <td style="text-align: center" class="style14">
                                        <strong>Sell your product here!</strong></td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                            WELCOME to all sellers who having Bachat gat product, Agricultural products, 
                                            Arts, Clothes, Food, Handicraft products, and Unique products.
                                        
                                            
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        If you have any product, submit information here for marketing it!
                                        
                                        </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                            <asp:Button ID="Button3" runat="server" BackColor="#FF9900" BorderStyle="Solid" 
                                Height="35px" style="font-size: medium; color: #FFFFFF; border-radius:10px" Text="Click Here" 
                                Width="200px" PostBackUrl="~/Visitor/Registration form.aspx" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="3" CellSpacing="8" 
                    DataKeyField="Regid" DataSourceID="SqlDataSource1" 
                    RepeatColumns="1" RepeatDirection="Horizontal" Width="900px">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="5" 
                            style="border: thin solid #C0C0C0;border-radius:10px" width="700">
                            <tr>
                                <td style="background-color: #DEDEDE;border-radius:10px" >
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Bachatgatname") %>' 
                                        style="color: #660033; font-size: large; font-weight: 700;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    City\Village:&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Products :&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    Contact:&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Contactperson") %>'></asp:Label>
                                    &nbsp;(<asp:Label ID="Label8" runat="server" Text='<%# Eval("Contactnumber") %>'></asp:Label>
                                    )</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Button ID="btnreadmore" runat="server" BackColor="#003366" 
                                        BorderStyle="None" Height="30px" onclick="btnreadmore_Click" 
                                        Text="Read more..." Width="150px" CommandArgument='<%# Eval("Regid") %>' 
                                        ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [Registration] WHERE ([Approved] LIKE '%' + @Approved + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Yes" Name="Approved" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:DataList ID="DataList2" runat="server" CellPadding="3" CellSpacing="8" 
                    DataKeyField="Regid" DataSourceID="SqlDataSource2" 
                    RepeatColumns="1" RepeatDirection="Horizontal" Width="900px" 
                    Visible="False">
                    <ItemTemplate>
                        <table align="center" cellpadding="5" cellspacing="5" 
                            style="border: thin solid #C0C0C0;border-radius:10px" width="700">
                            <tr>
                                <td style="background-color: #DEDEDE;border-radius:10px" >
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Bachatgatname") %>' 
                                        style="color: #660033; font-size: large; font-weight: 700;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    City\Village:&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Products :&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    Contact:&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Contactperson") %>'></asp:Label>
                                    &nbsp;(<asp:Label ID="Label8" runat="server" Text='<%# Eval("Contactnumber") %>'></asp:Label>
                                    )</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Button ID="btnreadmore" runat="server" BackColor="#003366" 
                                        BorderStyle="None" Height="30px" onclick="btnreadmore_Click" 
                                        Text="Read more..." Width="150px" CommandArgument='<%# Eval("Regid") %>' 
                                        ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Registration] WHERE (([City] LIKE '%' + @City + '%') AND ([Approved] LIKE '%' + @Approved + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtcity" Name="City" PropertyName="Text" 
                            Type="String" />
                        <asp:Parameter DefaultValue="Yes" Name="Approved" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


