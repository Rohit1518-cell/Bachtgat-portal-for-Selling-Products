<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="Daily Report.aspx.cs" Inherits="Report_Daily_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style6">
        <tr>
            <td style="text-align: center">
                <strong>Daily Sells of Product</strong></td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="Odate" DataValueField="Odate" 
                    Font-Bold="True" Font-Size="12pt" Height="30px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Odate] FROM [Order]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Pdate] FROM [bachatgatorder]"></asp:SqlDataSource>
&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="12pt" 
                    Height="30px" Text="Display" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Untitled.jpg" 
                    Width="100%" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="Oid" HeaderText="Oid" SortExpression="Oid" />
                        <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                            SortExpression="Quantity" />
                        <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                            SortExpression="TotalPrice" />
                        <asp:BoundField DataField="Custname" HeaderText="Custname" 
                            SortExpression="Custname" />
                        <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Order] WHERE ([Odate] = @Odate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Odate" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

