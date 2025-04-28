using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_Post_event : System.Web.UI.Page
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
        cmd.CommandText="insert into Postevent values ("+txteventid.Text+",'"+txteventname.Text+"','"+txtdate.Text+"','"+txttime.Text+"','"+txtvenue.Text+"','"+txtcontactperson.Text+"',"+txtmobile.Text+",'"+txtregistrationfees.Text+"','"+Image1.ImageUrl+"')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();


    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\image\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\image\\" + FileUpload1.FileName;
        }
            
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (Eventid) from Postevent";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txteventid.Text=i.ToString();
        cn.Close();


    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Postevent set eventid=" + txteventid.Text +",Eventname='" + txteventname.Text + "',Date='" + txtdate.Text + "',Time='" + txttime.Text + "',Venue='" + txtvenue.Text + "',Contactperson='" + txtcontactperson.Text + "',Mobile=" + txtmobile.Text + ",Registrationfees='" + txtregistrationfees.Text + "',Uploadadvertise='" + Image1.ImageUrl + "'where Eventid="+txteventid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="delete from Postevent where Eventid ="+txteventid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txteventid.Text = " ";
        txteventname.Text = " ";
        txtdate.Text = " ";
        txttime.Text = " ";
        txtvenue.Text = " ";
        txtcontactperson.Text = " ";
        txtmobile.Text = " ";
        txtregistrationfees.Text = " ";
        Image1.ImageUrl = " ";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txteventid.Text = GridView1.SelectedRow.Cells[1].Text;
        txteventname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtdate.Text = GridView1.SelectedRow.Cells[3].Text;
        txttime.Text = GridView1.SelectedRow.Cells[4].Text;
        txtvenue.Text = GridView1.SelectedRow.Cells[5].Text;
        txtcontactperson.Text = GridView1.SelectedRow.Cells[6].Text;
        txtmobile.Text = GridView1.SelectedRow.Cells[7].Text;
        txtregistrationfees.Text = GridView1.SelectedRow.Cells[8].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[9].Text;


    }
}