using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Product : System.Web.UI.Page
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
        cmd.CommandText = "select count(Pid) from Product";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtpid.Text = i.ToString();
        cn.Close();

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (*) from  Product where Pname='" + txtpname.Text + "'";
        cmd.Connection=cn;
        int count =Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'> alert ('Pname already exit')</script>");


        }
        else
        {

            cmd.CommandText = "insert into Product values(" + txtpid.Text + ",'" + txtcatname.Text + "','" + txtpname.Text + "','" + Image1.ImageUrl + "','" + txtprice.Text + "','" + txtweight.Text + "','" + txtingredient.Text + "','" + txtexpiraydate.Text + "','" + txtspecification.Text + "','" + txtbachatgatname.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        }

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtpid.Text = " ";
        txtcatname.Text = " ";
        txtpname.Text = " ";
        Image1.ImageUrl = " ";
        txtprice.Text = " ";
        txtweight.Text = " ";
        txtingredient.Text = " ";
        txtexpiraydate.Text = " ";
        txtspecification.Text = " ";
        txtbachatgatname.Text = " ";
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Product set Pid="+txtpid.Text+",Catname='"+txtcatname.Text+"',Pname='"+txtpname.Text+"',Photo='"+Image1.ImageUrl+"',Price='"+txtprice.Text+"', Weight='"+txtweight.Text+"',Ingredients='"+txtingredient.Text+"',Expiraydate='"+txtexpiraydate.Text+"',Specification='"+txtspecification.Text+"',Bachatgatname='"+txtbachatgatname.Text+"' where pid="+txtpid.Text+""; 
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
protected void  btndelete_Click(object sender, EventArgs e)
{
    cn.Open();
    cmd.CommandText="Delete from Product where Pid="+txtpid.Text+" ";
    cmd.Connection=cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    GridView1.DataBind();
}

protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
{
    txtpid.Text=GridView1.SelectedRow.Cells[1].Text;
    txtcatname.Text=GridView1.SelectedRow.Cells[2].Text;
    txtpname.Text=GridView1.SelectedRow.Cells[3].Text;
    Image1.ImageUrl=GridView1.SelectedRow.Cells[4].Text;
    txtprice.Text = GridView1.SelectedRow.Cells[5].Text;
    txtweight.Text = GridView1.SelectedRow.Cells[6].Text;
    txtingredient.Text = GridView1.SelectedRow.Cells[7].Text;
    txtexpiraydate.Text = GridView1.SelectedRow.Cells[8].Text;
    txtspecification.Text = GridView1.SelectedRow.Cells[9].Text;
    txtbachatgatname.Text = GridView1.SelectedRow.Cells[10].Text;
   
    
    
}
protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
{

}

protected void btnupload_Click(object sender, EventArgs e)
{
    if (FileUpload1.HasFile == true)
    {
        FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
        Image1.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
    }

}
}