using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Visitor_Event : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtupload_Click(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        //if (FileUpload1.HasFile == true)
        //{
        //    FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
        //    Image1.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
        //}
            
            
            

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //cmd.CommandText = "insert into Postevent values('" + txteventname.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + txtvenue.Text + "','" + txtcontactperson.Text + "'," + txtmobile.Text + ",'" + txtregistationfees.Text + "','" +Image1.ImageUrl + "')";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();


    }
}