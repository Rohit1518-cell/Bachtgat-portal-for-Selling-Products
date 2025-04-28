using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Product_Detail12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string s1 = btn.CommandArgument;
        Session["pid"] = s1.ToString();
        Response.Redirect("~/visistor/login.aspx");
    }
}