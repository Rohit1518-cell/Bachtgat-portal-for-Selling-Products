using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Visitor_Registation_form : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile==true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\"+FileUpload1.FileName));
            Image1.ImageUrl="~\\Image\\"+FileUpload1.FileName;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Regid) from Registration";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtregistationid.Text = i.ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "Select count (*) from registration where Username='" + txtusername.Text + "'";
        cmd.Connection=cn;
        int count =Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
           ClientScript.RegisterStartupScript(Page.GetType(),"Error","<Script language='javascript'> alert ('uses already exit')</script>");


        }
        else
        {
        cmd.CommandText = "insert into Registration values(" + txtregistationid.Text + "," + txtregistationdate.Text + ",'" + txtbachatgatname.Text + "'," + txtnumberofpersons.Text + ",'" + txtcontactpersonename.Text + "'," + txtcontactnumber.Text + ",'" + txtemail.Text + "','" + txtcity.Text + "','" + txttaluka.Text + "','" + txtdistrict.Text + "','" + txtkeyskills.Text + "','" + txtproduct.Text + "','" + txtcode.Text + "','" + txtbankdetails.Text + "'," + txtaccno.Text + ",'" + txtusername.Text + "','" + txtpassward.Text + "','" + Image1.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
        }
        
        txtregistationid.Text = " ";
        txtregistationdate.Text = " ";
        txtbachatgatname.Text = " ";
        txtnumberofpersons.Text = " ";
        txtcontactpersonename.Text = " ";
        txtcontactnumber.Text = " ";
        txtemail.Text = " ";
      
        txtcity.Text = " ";
        txttaluka.Text = " ";
        txtdistrict.Text = " ";
        txtkeyskills.Text = " ";
        txtproduct.Text = " ";
        txtcode.Text = " ";
        txtbankdetails.Text = " ";
        txtaccno.Text = " ";
        txtusername.Text = " ";
        txtpassward.Text = " ";
        Image1.ImageUrl = " ";
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Registration set Regid=" + txtregistationid.Text + ",Regdate='" + txtregistationdate.Text + "',Bachatgatname='" + txtbachatgatname.Text + "',Numberofpersons=" + txtnumberofpersons.Text + ",Contactperson='" + txtcontactpersonename.Text + "',Contactnumber=" + txtcontactnumber.Text + ",Email='" + txtemail.Text + "',City='" + txtcity.Text + "',Taluka='" + txttaluka.Text + "',District='" + txtdistrict.Text + "',Keyskill='" + txtkeyskills.Text + "',Product='" + txtproduct.Text + "',IFSCCode='" + txtcode.Text + "',Bankname='" + txtbankdetails.Text + "',ACCnumber=" + txtaccno.Text + ",Username='" + txtusername.Text + "',Password='" + txtpassward.Text + "',Photo='" + Image1.ImageUrl + "' where Regid=" + txtregistationid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        //GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //txtregistationid.Text = GridView1.SelectedRow.Cells[1].Text;
        //txtregistationdate.Text = GridView1.SelectedRow.Cells[2].Text;
        //txtbachatgatname.Text = GridView1.SelectedRow.Cells[3].Text;
        //txtnumberofpersons.Text = GridView1.SelectedRow.Cells[4].Text;
        //txtcontactpersonename.Text = GridView1.SelectedRow.Cells[5].Text;
        //txtcontactnumber.Text = GridView1.SelectedRow.Cells[6].Text;
        //txtemail.Text = GridView1.SelectedRow.Cells[7].Text;
        //txtcity.Text = GridView1.SelectedRow.Cells[9].Text;
        //txttaluka.Text = GridView1.SelectedRow.Cells[10].Text;
        //txtdistrict.Text = GridView1.SelectedRow.Cells[11].Text;
        //txtkeyskills.Text = GridView1.SelectedRow.Cells[12].Text;
        //txtproduct.Text = GridView1.SelectedRow.Cells[13].Text;
        //txtcode.Text = GridView1.SelectedRow.Cells[14].Text;
        //txtbankdetails.Text = GridView1.SelectedRow.Cells[15].Text;
        //txtaccno.Text = GridView1.SelectedRow.Cells[16].Text;
        //txtusername.Text = GridView1.SelectedRow.Cells[17].Text;
        //txtpassward.Text = GridView1.SelectedRow.Cells[18].Text;
        //Image1.ImageUrl = GridView1.SelectedRow.Cells[19].Text;









    }

}
