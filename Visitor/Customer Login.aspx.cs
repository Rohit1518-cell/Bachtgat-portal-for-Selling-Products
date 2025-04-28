using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;



public partial class Visitor_Customer_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Username,Passward from cust_registration where Username= '" + txtusername.Text + "' and Passward= '" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(ds);
        int Count = ds.Tables[0].Rows.Count;
        if (Count == 1)
        {
            Session["user"] = txtusername.Text;
            Response.Redirect("~/Customer/Products.aspx");

        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Invalid username and passward')</script>");
        }
        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
         cn.Open();
        cmd.CommandText = "select Username,Passward from cust_registration where Username= '" + txtusername.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(ds);
        int Count = ds.Tables[0].Rows.Count;
        if (Count == 1)
        {
            Session["user"] = txtusername.Text;
            Response.Redirect("~/Customer/Feedback.aspx");

       

    }
}