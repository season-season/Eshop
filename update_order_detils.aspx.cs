using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class update_order_detils : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from userdetail where email='" + Session["user"].ToString() + "'";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {

            t1.Text = dr["firstname"].ToString();
            t2.Text = dr["lastname"].ToString();
            t3.Text = dr["gender"].ToString();
            t4.Text = dr["address"].ToString();
            t5.Text = dr["city"].ToString();
            t6.Text = dr["state"].ToString();
            t7.Text = dr["pincode"].ToString(); 
            t8.Text = dr["phone"].ToString();
        }

        cn.Close();


    }
    protected void b1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Update userdetail Set firstname='"+t1.Text+"',lastname='"+t2.Text+"',gender='"+t3.Text+"',address='"+t4.Text+"',city='"+t5.Text+"',state='"+t6.Text+"',pincode='"+t7.Text+"',phone='"+t8.Text+"' where email='" + Session["user"].ToString() + "'";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("confirm.aspx");
    }
}