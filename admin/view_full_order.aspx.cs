using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_view_full_order : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    int id,tot=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");

        }

        id =Convert.ToInt32(Request.QueryString["id"].ToString());

        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from orderdetails where order_id="+id+"";
        cmd.Connection = gc.cn;

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            tot =tot+ Convert.ToInt32(dr["productprice"].ToString()) * Convert.ToInt32(dr["productqty"].ToString());
             }

        r1.DataSource = dt;
        r1.DataBind();
        cn.Close();
        tot3.Text = "Total price" + tot.ToString();
        
        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select *from userorder where id=" + id + "";
        cmd1.Connection = gc.cn;

        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {

            r2.Text = dr1["firstname"].ToString();
            r3.Text = dr1["lastname"].ToString();
            r4.Text = dr1["email"].ToString();
            r5.Text = dr1["city"].ToString();
        }

        cn.Close();
    
    
    
      
    }
    protected void r1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}