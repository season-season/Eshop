using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class viewcart : System.Web.UI.Page
{
    String s, t;
    Int32 b;
   
    String[] a= new String[7];
    int tot=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[8] { new DataColumn("productname"),new DataColumn("category"),
new DataColumn("desc"),new DataColumn("price"),new DataColumn("qty"),new DataColumn("images"),new DataColumn("id"),new DataColumn("productid")});
        if (Request.Cookies["aa"] != null)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);

            String[] strArr = s.Split('|');


            for (int i = 0; i < strArr.Length; i++)
            {
                t = Convert.ToString(strArr[i].ToString());
                String[] strArr1 = t.Split(',');
                for (int j = 0; j < strArr1.Length; j++)
                {

                    a[j] = strArr1[j].ToString();
                }
                dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), a[5].ToString(), i.ToString(), a[6].ToString());
                if (Int32.TryParse(a[3].ToString(), out b))
                {

                    tot = tot + (Convert.ToInt32(a[3].ToString()) * Convert.ToInt32(a[4].ToString()));
                }

                if (Int32.TryParse(a[2].ToString(), out b))
                {
                    tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[4].ToString()));
                }
 }

        }
        d1.DataSource = dt;
        d1.DataBind();
        l1.Text = "Your Total" + tot.ToString();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        
    }

    protected void ch1_Click(object sender, EventArgs e)
    {
        Session["checkoutbutton"] = "yes";
        Response.Redirect("checkout.aspx");
    }
}