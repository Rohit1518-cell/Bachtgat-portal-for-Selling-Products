<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Visitor master.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Visitor_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
         
        }
        .style14
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="4" class="style13" cellspacing="5">
        <tr>
            <td style="text-align: center" valign="top">
                <br />
                <table align="center" cellpadding="5" style="border: thin solid #000000;border-radius:10px" 
                    width="700">
                    <tr>
                        <td>
                            <span style="display: inline !important; float: none; background-color: rgb(255, 255, 255); color: rgb(0, 90, 132); font-family: sans-serif,Arial,Verdana,Helvetica; font-size: 125%; font-style: normal; font-variant: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">
                            Product Categories -- BUY PRODUCTS HERE &gt;&gt;</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="Catid" 
                                DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="15" 
                                RepeatColumns="3" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table align="center" cellpadding="5" class="style14" 
                                        style="border: thin solid #999999">
                                        <tr>
                                            <td style="text-align: left">
                                                <asp:Label ID="Label1" runat="server" style="color: #800000" 
                                                    Text='<%# Eval("Catname") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                                    CommandArgument='<%# Eval("Catname") %>' Height="106px" 
                                                    ImageUrl='<%# Eval("Image") %>' onclick="ImageButton1_Click2" Width="171px" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="text-align: center" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td rowspan="3" valign="top">
                <marquee width="200" height="520" behavior="alternate" direction="up">
                <table cellpadding="3">
                <tr><td> <asp:Image ID="Image3" runat="server" Height="100" Width="150" ImageUrl="~/Image/Candle.jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image>
               </td> </tr>
               <tr><td><asp:Image ID="Image4" runat="server" Height="100" Width="150" ImageUrl="~/Image/Chilla Pickle.jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image1" runat="server" Height="100" Width="150" ImageUrl="~/Image/Biscuit (3).jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image2" runat="server" Height="100" Width="150" ImageUrl="~/Image/Banarasi saree.jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image5" runat="server" Height="100" Width="150" ImageUrl="~/Image/papad (5).jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image6" runat="server" Height="100" Width="150" ImageUrl="~/Image/Thali.jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image7" runat="server" Height="100" Width="150" ImageUrl="~/Image/Masoor Daal.png" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image8" runat="server" Height="100" Width="150" ImageUrl="~/Image/Mogra Agarbatti.jpg" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image9" runat="server" Height="100" Width="150" ImageUrl="~/Image/Zola Bags.png" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
               <tr><td><asp:Image ID="Image10" runat="server" Height="100" Width="150" ImageUrl="~/Image/Halwa jewerlley.png" BorderStyle="Solid" BorderColor="#999999"></asp:Image></td></tr>
                </table></marquee> 
                </td>

                 </tr>
        <tr>
            <td>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


