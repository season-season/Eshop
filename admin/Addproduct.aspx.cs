using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient; 


public partial class admin_Addproduct : System.Web.UI.Page
{
    String a,b;
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
        string ext = System.IO.Path.GetExtension(this.f1.PostedFile.FileName).ToLower();
 
            a = Class1.GetRandomPassword(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "admin/images/" + a + f1.FileName.ToString());

            b = "images/" + a + f1.FileName.ToString();

            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Product  values('" + t1.Text + "','" + t2.Text + "','" + c1.Text + "','" + t4.Text + "'," + t5.Text + ",'" + b.ToString() + "')";
            cmd.Connection = gc.cn;
            cmd.ExecuteNonQuery();

            cn.Close();
            t1.Text = "";
            t2.Text = "";

            t4.Text = "";
            t5.Text = "";

        }
    }
