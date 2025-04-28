<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Visitor_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 28px;
        }
        .style13
        {
            width: 90%;
            height: 100%;
        }
        .style14
        {
            font-size: large;
            color: #003366;
        }
    </style>
</asp:Content>
<%--<a href="Customer%20registration.aspx">Customer registration.aspx</a>--%>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="5" class="style13">
        <tr>
            <td style="text-align: center; font-size: xx-large">
                <br />
                <asp:Image ID="Image8" runat="server" Height="80px" 
                    ImageUrl="~/Image/Event.png" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp; Events<br />
                <span class="style14">Events organised for bachatgat to grow their business 
                skills</span><hr noshade="noshade" size="1" style="color: #800000" 
                    width="1100" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" CellPadding="4" 
                    DataKeyField="Eventid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    style="text-align: left" Width="633px">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        Eventname:
                        <asp:Label ID="EventnameLabel" runat="server" Text='<%# Eval("Eventname") %>' />
                        <br />
                        Date:
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        <br />
                        Time:
                        <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                        <br />
                        Venue:
                        <asp:Label ID="VenueLabel" runat="server" Text='<%# Eval("Venue") %>' />
                        <br />
                        Contactperson:
                        <asp:Label ID="ContactpersonLabel" runat="server" 
                            Text='<%# Eval("Contactperson") %>' />
                        <br />
                        Mobile:
                        <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        <br />
                        Registrationfees:
                        <asp:Label ID="RegistrationfeesLabel" runat="server" 
                            Text='<%# Eval("Registrationfees") %>' />
                        <br />
                        Uploadadvertise:
                        <asp:Label ID="UploadadvertiseLabel" runat="server" 
                            Text='<%# Eval("Uploadadvertise") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Postevent]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </asp:Content>


