<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer1.master" AutoEventWireup="true" CodeFile="My Profile1.aspx.cs" Inherits="Customer_My_Profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="style2">
        <tr>
            <td style="text-align: center">
                My Profile<hr noshade="noshade" width="600" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" Height="400px" Width="500px">
                    <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
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
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [cust_registration] WHERE ([Username] = @Username)"
                     UpdateCommand ="update [cust_registration] set [Custname]=@Custname,[Address]=@Address,[Mobile]=@Mobile,[Email]=@Email,[Username]=@Username,[Passward]=@Passward where [Username]=@Username "
                    
                    >
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

