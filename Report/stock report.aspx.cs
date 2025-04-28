using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Report_stock_report : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
  //  OleDbDataAdapter da = new OleDbDataAdapter();
//OleDbDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
        
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // dt.Clear();
        //cn.Close();
        //cn.Open();
        //cmd.CommandText = "select count (*) from Product where catname='"+DropDownList1.Text +"'";
        //cmd.Connection = cn;
        //dt.Load(cmd.ExecuteReader());
        //GridView1.DataSource = dt;
        //GridView1.DataBind();

        cn.Close();

    }
}