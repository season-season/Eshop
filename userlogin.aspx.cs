using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class userlogin : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();

    SqlConnection cn = new SqlConnection();
    int tot = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void l1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = cn.CreateCommand();
        cmd.Connection = gc.cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * From userdetail Where email='"+e1.Text+"' and password='"+p1.Text+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        tot = Convert.ToInt32(dt.Rows.Count.ToString());
        if (tot > 0)
        {
            if (Session["checkoutbutton"] == "yes")
            {
                Session["user"] = e1.Text;

                Response.Redirect("update_order_detils.aspx");
            }
            else
            {
                Session["user"] = e1.Text;
                Response.Redirect("order_details.aspx");
            }

            }
        else
        {
            l2.Text = "Invalid UserName Password";
        }

        cn.Close();
    }
}