using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class myaccount : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    String email;
    SqlConnection cn = new SqlConnection();
    int order_id,tot;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }


        
        String ses = Session["user"].ToString();
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select email from userdetail where email='" + ses.ToString() + "'";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {

            email= dr["email"].ToString();
        }
        

        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select *from orderdetails where email='"+email+"'";
        cmd1.Connection = gc.cn;

        cmd1.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr1 in dt1.Rows)
        {
            tot = tot + Convert.ToInt32(dr1["productprice"].ToString()) * Convert.ToInt32(dr1["productqty"].ToString());
        }

        r1.DataSource = dt1;
        r1.DataBind();
        cn.Close();
        tot3.Text = "Total price" + tot.ToString();
        

    
    
    
    
    
    
    
    }
}