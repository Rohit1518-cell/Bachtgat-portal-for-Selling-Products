using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a;
        Button btn = sender as Button;
        a=Convert.ToInt32 (btn.CommandArgument);
        //Session["id"] = a;
       // Response.Redirect("~/Visitor/Bachagat Detail.aspx");

    }
    protected void btnreadmore_Click(object sender, EventArgs e)
    {
        int a;
        Button btn = sender as Button;
        a = Convert.ToInt32(btn.CommandArgument);
        Session["id"] = a;
        Response.Redirect("~/Visitor/Bachatgat Details.aspx");


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataList2.Visible = true;
        DataList1.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        DataList1.Visible = true;
    }
}