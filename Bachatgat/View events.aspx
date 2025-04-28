<%@ Page Title="" Language="C#" MasterPageFile="~/Bachatgat/Bachatgat master.master" AutoEventWireup="true" CodeFile="View events.aspx.cs" Inherits="Bachatgat_View_events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="7" class="style12">
        <tr>
            <td style="text-align: center; font-size: x-large; color: #800000">
                View Events<hr noshade="noshade" size="2" 
                    style="margin-bottom: 0px; background-color: #800000" width="700" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="Eventid" DataSourceID="SqlDataSource1" 
                    GridLines="Vertical" Height="277px" Width="978px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Eventid" HeaderText="Eventid" ReadOnly="True" 
                            SortExpression="Eventid" />
                        <asp:BoundField DataField="Eventname" HeaderText="Eventname" 
                            SortExpression="Eventname" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                        <asp:BoundField DataField="Contactperson" HeaderText="Contactperson" 
                            SortExpression="Contactperson" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                            SortExpression="Mobile" />
                        <asp:BoundField DataField="Registrationfees" HeaderText="Registrationfees" 
                            SortExpression="Registrationfees" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Eventid], [Eventname], [Date], [Time], [Venue], [Contactperson], [Mobile], [Registrationfees] FROM [Postevent]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

