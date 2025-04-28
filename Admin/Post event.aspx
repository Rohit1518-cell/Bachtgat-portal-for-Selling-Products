<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="Post event.aspx.cs" Inherits="Admin_Post_event" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" cellspacing="3" width="90%" 
        bgcolor="#A6E9FF">
        <tr>
            <td colspan="4" bgcolor="#CCCCCC" 
                style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #3399FF;">
                &nbsp;
                POST EVENT</td>
        </tr>
        <tr>
            <td>
                Event id</td>
            <td>
                <asp:TextBox ID="txteventid" runat="server" Height="30px" Width="200px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td>
                Event Name</td>
            <td>
                <asp:TextBox ID="txteventname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate">
                </cc1:CalendarExtender>
            </td>
            <td>
                Time</td>
            <td>
                <asp:TextBox ID="txttime" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Venue</td>
            <td>
                <asp:TextBox ID="txtvenue" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                Contact Person</td>
            <td>
                <asp:TextBox ID="txtcontactperson" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mobile</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                Registration Fees</td>
            <td>
                <asp:TextBox ID="txtregistrationfees" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="121px" Width="238px" 
                    ImageUrl="~/Image/Event.png" />
            </td>
            <td>
                Select Image<br />
                <br />
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="35px" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;<asp:Button ID="btnupload" runat="server" Height="35px" 
                    onclick="btnupload_Click" Text="Upload" Width="160px" BackColor="#003366" 
                    ForeColor="White" style="font-weight: 700" BorderStyle="None" />
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnnew" runat="server" 
                    BorderStyle="None" Height="35px" onclick="btnnew_Click" Text="New" 
                    Width="170px" BackColor="#003366" ForeColor="White" 
                    style="font-weight: 700" />
                &nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderStyle="None" Height="35px" 
                    onclick="btnsubmit_Click" Text="Save" Width="170px" BackColor="#003366" 
                    ForeColor="White" style="font-weight: 700" />
                &nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BorderStyle="None" Height="35px" 
                    onclick="btnupdate_Click" Text="Update" Width="170px" BackColor="#003366" 
                    ForeColor="White" style="font-weight: 700" />
                &nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BorderStyle="None" Height="35px" 
                    onclick="btndelete_Click" Text="Delete" Width="170px" BackColor="#003366" 
                    ForeColor="White" style="font-weight: 700" />
                &nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" BorderStyle="None" Height="35px" 
                    onclick="btnclear_Click" Text="Clear" Width="170px" BackColor="#003366" 
                    ForeColor="White" style="font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" Height="400px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="600px" 
                    AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Eventid" HeaderText="Eventid" 
                            SortExpression="Eventid" />
                        <asp:BoundField DataField="Eventname" HeaderText="Name" 
                            SortExpression="Eventname" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                        <asp:BoundField DataField="Contactperson" HeaderText="Contact" 
                            SortExpression="Contactperson" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                            SortExpression="Mobile" />
                        <asp:BoundField DataField="Registrationfees" HeaderText="Fees" 
                            SortExpression="Registrationfees" />
                        <asp:BoundField DataField="Uploadadvertise" HeaderText="Advertise" 
                            SortExpression="Uploadadvertise" />
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
                    SelectCommand="SELECT * FROM [Postevent]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


