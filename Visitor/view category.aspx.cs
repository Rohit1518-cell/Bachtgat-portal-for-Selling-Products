using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_view_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string s = btn.CommandArgument;
        Session["cat"] = s.ToString();
        Response.Redirect("~/Visitor/Product Category.aspx");
    }
}