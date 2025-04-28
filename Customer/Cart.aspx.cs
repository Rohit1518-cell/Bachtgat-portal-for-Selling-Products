using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Cart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\Bachatgat\\App_Data\\Bachatgat.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd=new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;

    DataTable dt = new DataTable();

    string z = "inprocess";
    string s, s1, s2;
    String st, st1, Status = "inprocess", cat, category;
    int a;
    int p;
    int b;
    String pp;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList q = sender as DropDownList;
        GridViewRow row = (GridViewRow)q.NamingContainer;
        int price = Convert.ToInt32(row.Cells[3].Text);
        Label lbltot = row.FindControl("lbltotal") as Label;
        String s = Convert.ToString(price * Convert.ToInt32(q.SelectedItem.Text));
        lbltot.Text = s;

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btntotalamount_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int id = Convert.ToInt32((GridView1.Rows[i].Cells[0].Text));
            String bb = GridView1.Rows[i].Cells[1].Text;
            String pp = GridView1.Rows[i].Cells[2].Text;
            int p = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
            DropDownList q = (DropDownList)GridView1.Rows[i].FindControl("DropDownlist") as DropDownList;
            int c = Convert.ToInt32(q.SelectedItem.Text);
            Label l1=(Label)GridView1.Rows[i].FindControl("lbltotal") as Label;
            int d = Convert.ToInt32(l1.Text);
           
            cn.Open();
            cmd.CommandText = "inset into Cart_Details values (" + id + ",'"+pp+"','" + bb + "'," + p + "," + d + "," + c + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            //cn.Open();
            //cmd.CommandText = "Select (Pname) from Cart_Detail";
            //cmd.Connection = cn;
            //da.SelectCommand = cmd;
            //da.Fill(dt);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        s2 = (dr.GetString(0));
            //    }
            //}
            //cn.Close();

            //cn.Open();
            //cmd.CommandText = "Select (category) from cart details";
            //cmd.Connection = cn;
            //da.SelectCommand = cmd;
            //da.Fill(dt);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        s2 = (dr.GetString(0));
            //    }
            //}
            //txtcat.Text = txtcat.Text + s2;
            //cn.Close();

            //cn.Open();
            //cmd.CommandText = "Select sum(total) from Cart_Details";
            //int amt = Convert.ToInt32(cmd.ExecuteScalar());
            //cmd.Connection = cn;
            //lbltot.Text = amt.ToString();
            //cn.Close();

            //cn.Open();
            //cmd.CommandText = "Select sum (quantity) from Cart_Detail";
            //int quan= Convert.ToInt32(cmd.ExecuteScalar());
            //cmd.Connection = cn;
            //lblquantity.Text = quan.ToString();
            //cn.Close();

            ////autogenerate oid:
            //cn.Open();
            //cmd.CommandText = "Select count(Oid) from [order]";
            //cmd.Connection = cn;
            //int x = Convert.ToInt32(cmd.ExecuteScalar());
            //x++;
            //lbloid.Text = x.ToString();
            //cn.Close();


          //  txtname.Text = Session["name"].ToString();
            //txtdate.Text = System.DateTime.Now.ToShortDateString();

 }
    }
    protected void btnconformorder_Click(object sender, EventArgs e)
    {
       
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int id = Convert.ToInt32((GridView1.Rows[i].Cells[0].Text));
            String bb = GridView1.Rows[i].Cells[1].Text;
             pp = GridView1.Rows[i].Cells[2].Text;
            int p = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
            DropDownList q = (DropDownList)GridView1.Rows[i].FindControl("DropDownList1") as DropDownList;
            int c = Convert.ToInt32(q.SelectedItem.Text);
            Label l1 = (Label)GridView1.Rows[i].FindControl("lbltotal") as Label;
            int d = Convert.ToInt32(l1.Text);

            cn.Open();
            cmd.CommandText = "insert into Cart_Details values (" + id + ",'" + pp + "','" + bb + "'," + p + "," + d + "," + c + ")"; 
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        cn.Open();
        cmd.CommandText = "Select (Pname) from Cart_Details";
        cmd.Connection = cn;
        da.SelectCommand = cmd;
        da.Fill(dt);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                s2 = (dr.GetString(0));
            }
        }
        txtcat.Text = txtcat.Text + s2;
        cn.Close();

            //cn.Open();
            //cmd.CommandText = "Select (category) from cart details";
            //cmd.Connection = cn;
            //da.SelectCommand = cmd;
            //da.Fill(dt);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        s2 = (dr.GetString(0));
            //    }
            //}
            //txtcat.Text = txtcat.Text + s2;
            //cn.Close();

        cn.Open();
        cmd.CommandText = "Select sum(total) from Cart_Details";
        int amt = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Connection = cn;
        lbltotal.Text = amt.ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "Select sum (quantity) from Cart_Details";
        int quan = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Connection = cn;
        lblquantity.Text = quan.ToString();
        cn.Close();

        //autogenerate oid:
        cn.Open();
        cmd.CommandText = "Select count(Oid) from [Order]";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lbloid.Text = x.ToString();
        cn.Close();


        txtname.Text = Session["user"].ToString();
        txtdate.Text = System.DateTime.Now.ToShortDateString();



    }
    protected void btnplaceorder_Click(object sender, EventArgs e)
    {
       
        // string pp="";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
           
            pp = GridView1.Rows[i].Cells[2].Text;
           
        }
        cn.Open();
        cmd.CommandText = "insert into [order] values(" + lbloid.Text + ",'"+pp+"','" + txtcat.Text + "','" + lbltot.Text + "','" + lblquantity.Text + "','" + lbltotal.Text + "','" + txtname.Text + "','" + txtdate.Text + "')";
        //if (rdcod.Checked == true)
        //    cmd.Parameters.AddWithValue("@p1", rdcod.Text);
        //else
        //    cmd.Parameters.AddWithValue("@p1", rdonline.Text);


        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        //autogenerate payid:
        cn.Open();
        cmd.CommandText = "Select count(Payid) from payment";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        txtpayid.Text = x.ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "insert into payment values(" + txtpayid.Text + ","+lbloid.Text +",'" + txtname.Text + "','" + txtdate.Text + "','" + txtcat.Text + "'," + lbltotal.Text + ",@p11,'"+txtbank.Text +"','"+txtcard.Text +"','"+txtcvv.Text +"')";
        cmd.Connection = cn;
        if (rdcod.Checked == true)
            cmd.Parameters.AddWithValue("@p11", rdcod.Text);
        else
            cmd.Parameters.AddWithValue("@p11", rdonline.Text);
        cmd.ExecuteNonQuery();
        cn.Close();



        //deleting from database
        cn.Open();
        cmd.CommandText = "Delete from Cart";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();




        Session["orderid"] = txtpayid.Text;
        Session["cust"] = txtname.Text;
        Session["caddress"] = txtaddress.Text;
        Session["price"] = lbltot.Text;
        Session["quantity"]=lblquantity.Text;
        Session["total"]=lbltotal.Text;

    }
}