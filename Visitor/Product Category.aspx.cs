using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_product_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string s1 = btn.CommandArgument;
        Session["cat"] = s1.ToString();
        Response.Redirect("~/Visitor/Product Detail12.aspx");
    }
}