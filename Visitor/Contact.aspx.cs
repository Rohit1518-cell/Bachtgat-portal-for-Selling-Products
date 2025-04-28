using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Visitor_Contact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
     cn.Open();
     cmd.CommandText = "insert into Enqueiry values ('" + txtname.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "'," + txtmobile.Text + ",'" + txtsubject.Text + "', '" + txtmessage.Text + "')";
     cmd.Connection = cn;
     cmd.ExecuteNonQuery();
     cn.Close();
    }
           
    
}