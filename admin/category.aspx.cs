using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_category : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");

        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType=CommandType.Text;
        cmd.CommandText = "insert into category values('" + t1.Text+ "')";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        l1.Text = "Sucessfully added Category";
        t1.Text = "";

    }
}