using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class home : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    
    SqlConnection cn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from Product where qty > 0 ORDER BY ID DESC";
        cmd.Connection = gc.cn;
       
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource=dt;
        d1.DataBind();
 
        
        cn.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from product where productname like'%" + s1.Text + "%'"; 
        cmd.Connection = gc.cn;

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();


        cn.Close();
 
    }
}