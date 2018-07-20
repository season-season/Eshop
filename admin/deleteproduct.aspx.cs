using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_deleteproduct : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");

        }

        id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from Product where ID=" + id + "";
        cmd.Connection = gc.cn;

        cmd.ExecuteNonQuery();
        
        cn.Close();
        Response.Redirect("viewproduct.aspx");
    }
}