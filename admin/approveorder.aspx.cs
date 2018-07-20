using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_approveorder : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();

    SqlConnection cn = new SqlConnection();
    int id,ids;
    String firstname, lastname, email, phone, city, state,pincode;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");

        }
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select order_id from orderdetails where ID=" + id + "";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        
        foreach (DataRow dr in dt.Rows)
        {

            ids = Convert.ToInt32(dr["order_id"].ToString());

        }
        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select *from userorder where id='" + ids+ "'";
        cmd1.Connection = gc.cn;

        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {

            firstname = dr1["firstname"].ToString();
            lastname = dr1["lastname"].ToString();
            email = dr1["email"].ToString();
            state = dr1["state"].ToString();
            city = dr1["city"].ToString();
            phone = dr1["mobile"].ToString();
            pincode = dr1["pincode"].ToString();
        
        }


        //insert in detaildelivery

        SqlCommand cmd2 = cn.CreateCommand();
        
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select *from orderdetails where id='"+id+"'";
        cmd2.Connection = gc.cn;
        cmd2.ExecuteNonQuery();
        

        DataTable dt2 = new DataTable();
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        da2.Fill(dt2);
        foreach (DataRow dr2 in dt2.Rows)
        {
            SqlCommand cmd3 = cn.CreateCommand();

            cmd3.CommandText = "insert into delivereddetails values('" + dr2["order_id"].ToString() + "','" + dr2["productname"].ToString() + "','" + dr2["category"].ToString() + "','" + dr2["productprice"].ToString() + "','" + dr2["productqty"].ToString() + "','" + dr2["product_images"].ToString() + "','" + firstname.ToString() + "','" + lastname.ToString() + "','" + email.ToString() + "','" + city.ToString() + "','" + state.ToString() + "','" + pincode.ToString() + "','" + phone.ToString() + "','" + DateTime.Now + "')";

            cmd3.Connection = gc.cn;

            cmd3.ExecuteNonQuery();


        }



        SqlCommand cmd4 = cn.CreateCommand();

        cmd4.CommandType = CommandType.Text;
        cmd4.CommandText = "Delete from orderdetails where id="+id;
        cmd4.Connection = gc.cn;
        cmd4.ExecuteNonQuery();
        

        DataTable dt4 = new DataTable();
        SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
        da4.Fill(dt);




        cn.Close();
        Response.Redirect("view_full_order.aspx?id="+id);









    }
}