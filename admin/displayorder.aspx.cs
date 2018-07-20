using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class admin_displayorder : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
 if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        
        }
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from userorder ORDER BY ID DESC";
        cmd.Connection = gc.cn;

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        r1.DataSource = dt;
        r1.DataBind();


        cn.Close();

       
    }
}