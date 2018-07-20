using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        try
        {
            adminlogin u = new adminlogin();
            DataTable dt = u.CheckUser(t1.Text, t2.Text);
            if (dt.Rows.Count > 0)
            {
                Session["admin"] = t1.Text;
                Response.Redirect("adminindex.aspx");
            }
            else
            {
                l1.Text = "Invaid User or Password!";
            }

        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;
        }
    }
    protected void t2_TextChanged(object sender, EventArgs e)
    {

    }
}