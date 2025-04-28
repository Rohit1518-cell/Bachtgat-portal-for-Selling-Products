<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="Product Category.aspx.cs" Inherits="Admin_Product_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td colspan="2">
                PRODUCT CATEGORY</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Catid</td>
            <td class="style2">
                <asp:TextBox ID="txtcatid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td rowspan="2">
                <asp:Image ID="Image1" runat="server" Height="149px" Width="129px" />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" onclick="btnupload_Click1" Text="Upload" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                Catname</td>
            <td>
                <asp:TextBox ID="txtcatname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnew" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btnnew_Click" Text="New" Width="150px" BackColor="Black" 
                    ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btnsave_Click" Text="Save" Width="150px" BackColor="Black" 
                    ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BorderStyle="None" Height="30px" 
                    onclick="btnupdate_Click" Text="Update" Width="150px" BackColor="Black" 
                    ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BorderStyle="None" Height="30px" 
                    Text="Delete" Width="150px" onclick="btndelete_Click" BackColor="Black" 
                    ForeColor="White" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Catid" HeaderText="Catid" SortExpression="Catid">
                        </asp:BoundField>
                        <asp:BoundField DataField="Catname" HeaderText="Catname" 
                            SortExpression="Catname"></asp:BoundField>
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <sortedascendingcellstyle backcolor="#EDF6F6" />
                    <sortedascendingheaderstyle backcolor="#0D4AC4" />
                    <sorteddescendingcellstyle backcolor="#D6DFDF" />
                    <sorteddescendingheaderstyle backcolor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


