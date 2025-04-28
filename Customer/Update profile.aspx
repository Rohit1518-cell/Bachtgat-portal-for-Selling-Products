<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer master.master" AutoEventWireup="true" CodeFile="Update profile.aspx.cs" Inherits="Customer_Update_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" cellspacing="5" class="style12">
        <tr>
            <td style="text-align: center; font-size: x-large">
                My Profile<hr />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" 
                    AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" Height="350px" 
                    style="text-align: left" Width="588px">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Custname" HeaderText="Custname" 
                            SortExpression="Custname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                            SortExpression="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Passward" HeaderText="Passward" 
                            SortExpression="Passward" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [cust_registration] WHERE ([Username] LIKE '%' + @Username + '%')"
                     UpdateCommand="Update cust_registration set [Address]=@Address,[Mobile]=@Mobile,[Email]=@Email,[Passward]=@Passward where([Username]=@Username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

