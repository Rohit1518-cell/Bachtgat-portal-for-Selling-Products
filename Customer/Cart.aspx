<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer master.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Customer_Cart" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 27px;
        }
        .style3
        {
            width: 100%;
            height: 10px;
        }
        .style12
        {
            width: 911px;
        }
        .style13
        {
            width: 100%;
            height: 10%;
        }
        .style14
        {
            width: 281px;
        }
        .style15
        {
            width: 371px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" class="style1">
        <tr>
            <td class="style12" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Pid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" 
                            SortExpression="Pname" />
                             <asp:BoundField DataField="Bachatgatname" HeaderText="Bachatgatname" 
                            SortExpression="Bachatgatname" />
 
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [cart_view]"></asp:SqlDataSource>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnconformorder" runat="server" BackColor="Black" 
                    ForeColor="White" Height="30px" onclick="btnconformorder_Click" 
                    Text="Confirm Order" Width="200px" />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbltot" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;
                <asp:Label ID="lblquantity" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table align="center" cellpadding="2" class="style13">
                        <tr>
                            <td class="style14">
                                Order Details</td>
                            <td class="style15">
                                <asp:Label ID="lbloid" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                Customer Name</td>
                            <td class="style15">
                                <asp:Label ID="txtname" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                Order Date</td>
                            <td class="style15">
                                <asp:Label ID="txtdate" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                &nbsp;</td>
                            <td class="style15">
                                <asp:Label ID="txtcat" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                Total Amount</td>
                            <td class="style15">
                                <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <table align="center" class="style1">
                    <tr>
                        <td align="center" class="style2" colspan="2">
                            Customer Details</td>
                    </tr>
                    <tr>
                        <td>
                            Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Pin</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="enter 6 digit number" 
                                ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact No</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="enter 10 digit number" 
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table align="center" cellpadding="2" class="style3">
                    <tr>
                        <td align="center" colspan="2">
                            Payment Details&nbsp;&nbsp;
                            <asp:TextBox ID="txtpayid" runat="server" Width="116px" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Payment Mode</td>
                        <td>
                            <asp:RadioButton ID="rdcod" runat="server" Text="COD" GroupName="abc" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rdonline" runat="server" 
                                oncheckedchanged="RadioButton2_CheckedChanged" Text="Online" 
                                GroupName="abc" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Bank Name</td>
                        <td>
                            <asp:TextBox ID="txtbank" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Card No</td>
                        <td>
                            <asp:TextBox ID="txtcard" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            CVV No</td>
                        <td>
                            <asp:TextBox ID="txtcvv" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtcvv" ErrorMessage="enter 3 digit number" 
                                ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Expiry Date</td>
                        <td>
                            <asp:TextBox ID="txtexpirydate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtexpirydate_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="txtexpirydate">
                            </cc1:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnmakepayment" runat="server" BackColor="#003399" 
                                BorderStyle="None" ForeColor="White" Height="35px" Text="Make a Payment" 
                                Width="150px" onclick="btnplaceorder_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


