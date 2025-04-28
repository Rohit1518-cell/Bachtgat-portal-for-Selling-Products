<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customermaster2.master" AutoEventWireup="true" CodeFile="My Profile12.aspx.cs" Inherits="Customer_My_Profile12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style12">
        <tr>
            <td style="text-align: center; font-size: xx-large">
                My Profile<hr noshade="noshade" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" Height="50px" Width="289px">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [cust_registration] WHERE ([Username] = @Username)"
                     UpdateCommand ="update cust_registration set [Custname]=@Custname,[Address]=@Address,[Mobile]=@Mobile,[Email]=@Email,[Username]=@Username,[Passward]=@Passward where [Username]=@Username"
                    
                    >
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

