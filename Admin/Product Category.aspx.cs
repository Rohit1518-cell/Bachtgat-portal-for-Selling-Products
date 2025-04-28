using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_Product_Category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Catid) from Category";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtcatid.Text = i.ToString();
        cn.Close();

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (*) from Category where Catname='" + txtcatname.Text + "'";
        cmd.Connection=cn;
        int count =Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'> alert ('Catname already exit')</script>");


        }
        else
        {

            cmd.CommandText = "insert into Category values (" + txtcatid.Text + ",'" + txtcatname.Text + "','" + Image1.ImageUrl + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            txtcatid.Text = " ";
            txtcatname.Text = " ";
        }



    }
    
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Update Category set Catid=" + txtcatid.Text + ",Catname='" + txtcatname.Text + "',Image='"+Image1.ImageUrl+"' where Catid="+txtcatid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        txtcatid.Text = " ";
        txtcatname.Text = " ";
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="Delete from Category where Catid="+txtcatid.Text+"";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        txtcatid.Text = " ";
        txtcatname.Text = " ";
      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcatid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtcatname.Text = GridView1.SelectedRow.Cells[2].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[3].Text;

    }


    protected void btnupload_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
        }

    }
}