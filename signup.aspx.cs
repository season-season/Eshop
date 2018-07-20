using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class signup : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    int c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "Select COUNT(*) from userdetail where email='" + t3.Text + "'";
        cmd1.Connection = gc.cn;
        cmd1.ExecuteNonQuery();
        cmd1.ExecuteScalar();
        c = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
        if (c > 0)
        {
            v1.Text = "This Email is Already Registered";
            cn.Close();
        }

        else
        {

            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into userdetail values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "'," + t9.Text + ",'" + t10.Text + "')";
            cmd.Connection = gc.cn;
            cmd.ExecuteNonQuery();

            cn.Close();
            t1.Text = "";
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
            t5.Text = "";
            t6.Text = "";
            t7.Text = "";
            t8.Text = "";
            t9.Text = "";
            t10.Text = "";
            l1.Text = "!!Sucessful Register";
            v1.Text = "";
        }
    }
}