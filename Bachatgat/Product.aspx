<%@ Page Title="" Language="C#" MasterPageFile="~/Bachatgat/Bachatgat master.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 10px;
        }
        .style4
        {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style3">
        <tr>
            <td bgcolor="#CCCCCC" colspan="2">
                PRODUCT DETAILS</td>
            <td bgcolor="#CCCCCC">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Product id
            </td>
            <td>
                <asp:TextBox ID="txtpid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td rowspan="9">
                <asp:Image ID="Image1" runat="server" Height="187px" Width="198px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
&nbsp;&nbsp;&nbsp;<asp:Button ID="btnupload" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" onclick="btnupload_Click" Text="Upload" Width="150px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4">
                Category Name</td>
            <td>
                <asp:TextBox ID="txtcatname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Product Name</td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Price</td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Weight</td>
            <td>
                <asp:TextBox ID="txtweight" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Ingerdients</td>
            <td>
                <asp:TextBox ID="txtingredient" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Expiray Date</td>
            <td>
                <asp:TextBox ID="txtexpiraydate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtexpiraydate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtexpiraydate">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Specification</td>
            <td>
                <asp:TextBox ID="txtspecification" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Bachatgat Name</td>
            <td>
                <asp:TextBox ID="txtbachatgatname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnew" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="New" Width="150px" onclick="btnnew_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="Save" Width="150px" onclick="btnsave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="Clear" Width="150px" onclick="btnclear_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="Update" Width="150px" onclick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="Delete" Width="150px" onclick="btndelete_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="Pid" 
                    AllowPaging="True" PageSize="5" Font-Size="14pt">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="Catname" HeaderText="Catname" 
                            SortExpression="Catname" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" 
                            SortExpression="Weight" />
                        <asp:BoundField DataField="Ingredients" HeaderText="Ingredients" 
                            SortExpression="Ingredients" />
                        <asp:BoundField DataField="Expiraydate" HeaderText="Expiraydate" 
                            SortExpression="Expiraydate" />
                        <asp:BoundField DataField="Specification" HeaderText="Specification" 
                            SortExpression="Specification" />
                        <asp:BoundField DataField="Bachatgatname" HeaderText="Bachatgatname" 
                            SortExpression="Bachatgatname" />
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
                    onselecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Product]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

