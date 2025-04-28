using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
    {
        string a;
        ImageButton btn = sender as ImageButton;
        a = btn.CommandArgument;
        Session["cat"] = a.ToString();
        Response.Redirect("~/Customer/Product Details.aspx");
    }
}