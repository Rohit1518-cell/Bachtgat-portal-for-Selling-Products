<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer master.master" AutoEventWireup="true" CodeFile="Edit Profile.aspx.cs" Inherits="Customer_Edit_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 90%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" class="style12">
    <tr>
        <td>
            Welcome:&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
                Height="100px" Width="445px">
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
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [cust_registration] WHERE ([Username] = @Username)"
                 UpdateCommand="update [cust_registration] set [Custname]=@Custname,[Address]=@Address,[Mobile]=@Mobile,
                 [Email]=@Email,[Username]=@Username,[Passward]=@Passward where [Username]=@Username"
                >
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

