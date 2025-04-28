<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin master.master" AutoEventWireup="true" CodeFile="Approve profile.aspx.cs" Inherits="Admin_Approve_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="Regid" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Regid" HeaderText="Regid" ReadOnly="True" 
                SortExpression="Regid" />
            <asp:BoundField DataField="Regdate" HeaderText="Regdate" 
                SortExpression="Regdate" />
            <asp:BoundField DataField="Bachatgatname" HeaderText="Bachatgatname" 
                SortExpression="Bachatgatname" />
            <asp:BoundField DataField="Numberofpersons" HeaderText="Numberofpersons" 
                SortExpression="Numberofpersons" />
            <asp:BoundField DataField="Contactperson" HeaderText="Contactperson" 
                SortExpression="Contactperson" />
            <asp:BoundField DataField="Contactnumber" HeaderText="Contactnumber" 
                SortExpression="Contactnumber" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Product" HeaderText="Product" 
                SortExpression="Product" />
            <asp:BoundField DataField="Approved" HeaderText="Approved" 
                SortExpression="Approved" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Regid], [Regdate], [Bachatgatname], [Numberofpersons], [Contactperson], [Contactnumber], [City], [Email], [Product], [Approved] FROM [Registration] WHERE ([Approved] LIKE '%' + @Approved + '%')"
         UpdateCommand="update [Registration] set [Regid]=@Regid, [Regdate]=@Regdate, [Bachatgatname]=@Bachatgatname, [Numberofpersons]=@Numberofpersons, [Contactperson]=@Contactperson, [Contactnumber]=@Contactnumber, [City]=@City, [Email]=@Email, [Product]=@Product,[Approved]=@Approved WHERE ([Regid]=@Regid) ">
        <SelectParameters>
            <asp:Parameter DefaultValue="No" Name="Approved" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

