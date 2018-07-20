using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Viewrecievedorder : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    int tot = 0;
    SqlConnection cn = new SqlConnection();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }

        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select *from delivereddetails where email='" + Session["user"].ToString() + "' order by id desc"; ;
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