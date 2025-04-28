using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Bachatgat_Update_profile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true) ;
        {
            FileUpload1.SaveAs(Server.MapPath("~\\image\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\image\\" + FileUpload1.FileName;
        }


    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Registration values(" + txtid.Text + ",'" + txtdate.Text + "','" + txtbachatgatname.Text + "'," + txtnumberofperson.Text + ", '" + txtcontactperson.Text + "'," + txtcontact.Text + ",'" + txtemail.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txttaluka.Text + "','" + txtdistrict.Text  + "','" + txtkeyskills.Text + "','" + txtproduct.Text + "','" + txtcode.Text + "','" + txtbankname.Text + "','" + txtaccnumber.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','"+Image1.ImageUrl+"')";
        cmd.Connection = cn;       
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Update Registration set Regid=" + txtid.Text + ",Regdate='" + txtdate.Text + "',Bachatgatname='" + txtbachatgatname.Text + "',Numberofpersons=" + txtnumberofperson.Text + ",Contactperson='" + txtcontactperson.Text + "',Contactnumber=" + txtcontact.Text + ",Email='" + txtemail.Text + "',Address='" + txtaddress.Text + "',City='" + txtcity.Text + "',Taluka='" + txttaluka.Text + "',District='" + txtdistrict.Text + "',Keyskill='" + txtkeyskills.Text + "',Product='" + txtproduct.Text + "',IFSCCode='" + txtcode.Text + "',Bankname='" + txtbankname.Text + "',ACCnumber='" + txtaccnumber + "',Username='" + txtusername.Text + "',Password='" + txtpassword.Text + "',Photo='" + Image1.ImageUrl + "' where Regid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();


    }
}