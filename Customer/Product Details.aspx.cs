using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Customer_Product_Details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void btnaddtocart_Click1(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        int a = Convert.ToInt32(btn.CommandArgument);
        Session["Pid"] = a;
        

        cn.Open();
        cmd.CommandText = "insert into cart values(" + a + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language ='javascript'>alert('Added to cart')</script>");
        cn.Close();
    }
}