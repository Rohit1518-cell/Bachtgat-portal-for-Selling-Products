using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Change_passward : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set Username='" + txtadminname.Text + "',Password='" + txtnewpassword.Text + "' where Username='"+txtadminname.Text +"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Password changed successfully')</script>");        
        cn.Close();

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtadminname.Text = " ";
        txtoldpassword.Text = " ";
        txtnewpassword.Text = " ";
        txtconfirmpassword.Text = " ";
    }
}
