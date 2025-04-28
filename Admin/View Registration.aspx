<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="View Registration.aspx.cs" Inherits="Admin_View_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
            font-size: large;
            color: #000099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td bgcolor="White" class="style2">
                VIEW REGISTRATION</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="Double" BorderWidth="1px" CellPadding="3" DataKeyNames="Regid" 
                    DataSourceID="SqlDataSource1" Font-Size="14pt" PageSize="5" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Regid" HeaderText="id" ReadOnly="True" 
                            SortExpression="Regid" />
                        <asp:BoundField DataField="Regdate" HeaderText="Date" 
                            SortExpression="Regdate" />
                        <asp:BoundField DataField="Bachatgatname" HeaderText="Name" 
                            SortExpression="Bachatgatname" />
                        <asp:BoundField DataField="Numberofpersons" HeaderText="Persons" 
                            SortExpression="Numberofpersons" />
                        <asp:BoundField DataField="Contactperson" HeaderText="Contperson" 
                            SortExpression="Contactperson" />
                        <asp:BoundField DataField="Contactnumber" HeaderText="Contact" 
                            SortExpression="Contactnumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Taluka" HeaderText="Taluka" 
                            SortExpression="Taluka" />
                        <asp:BoundField DataField="District" HeaderText="District" 
                            SortExpression="District" />
                        <asp:BoundField DataField="Keyskill" HeaderText="Keyskill" 
                            SortExpression="Keyskill" />
                        <asp:BoundField DataField="Product" HeaderText="Product" 
                            SortExpression="Product" />
                        <asp:BoundField DataField="IFSCCode" HeaderText="IFSCCode" 
                            SortExpression="IFSCCode" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bank" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="ACCnumber" HeaderText="ACCno" 
                            SortExpression="ACCnumber" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

