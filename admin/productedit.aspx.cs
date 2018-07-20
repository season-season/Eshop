using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class admin_productedit : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    int id; String a, b;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");

        }
        if (IsPostBack)
        {
            return;
        }
        

        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from Product where ID=" + id + "";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
         
        foreach (DataRow dr in dt.Rows)
        {

            t1.Text = dr["productname"].ToString();
            t2.Text = dr["productdesc"].ToString();
            c1.Text = dr["category"].ToString();
            t4.Text = dr["price"].ToString();
            t5.Text = dr["qty"].ToString();
            
      
            
        }
        cn.Close();
    }
    protected void p1_Click(object sender, EventArgs e)
    {
        
        if (f1.HasFile)
        {
            

                a = Class1.GetRandomPassword(10).ToString();
                f1.SaveAs(Request.PhysicalApplicationPath + "admin/images/" + a + f1.FileName.ToString());

                b = "images/" + a + f1.FileName.ToString();


                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                SqlCommand cmd1 = cn.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update Product Set productname='" + t1.Text + "',productdesc='" + t2.Text + "',category='" + c1.Text + "',price='" + t4.Text + "',qty='" + t5.Text + "',product_images='" + b.ToString() + "' where ID=" + id + "";
                cmd1.Connection = gc.cn;
                cmd1.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("viewproduct.aspx");
            }
        
        else
        {

            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            SqlCommand cmd1 = cn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update Product Set productname='" + t1.Text + "',productdesc='" + t2.Text + "',category='" + c1.Text + "',price='" + t4.Text + "',qty='" + t5.Text + "' where ID=" + id + "";
            cmd1.Connection = gc.cn;
            cmd1.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("viewproduct.aspx");
        }
    
    }
}