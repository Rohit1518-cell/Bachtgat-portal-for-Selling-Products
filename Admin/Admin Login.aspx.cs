using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin_Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        cn.Open();
        cmd.CommandText = "select Username,Passward from Admin where Username= '" + txtusername.Text + "' and Passward= '"+txtpassword.Text+ "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int Count = dt.Rows.Count;
        if (Count > 0)
        {
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Invalid username and passward')</script>");
        }
        cn.Close();



    }



























    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        cn.Open();
        cmd.CommandText = "select Username,Passward from Admin where Username= '" + txtusername.Text + "' and Passward= '" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int Count = dt.Rows.Count;
        if (Count > 0)
        {
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Invalid username and passward')</script>");
        }
        cn.Close();
 

       
        

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
}