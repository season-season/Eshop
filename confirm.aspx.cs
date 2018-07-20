using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class confirm : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    String s, t;
    String order_no;
    Int32 b;
    String[] a = new String[7];
    int tot = 0;
  
    protected void Page_Load(object sender, EventArgs e)
    {
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
                if (Int32.TryParse(a[3].ToString(), out b))
                {

                    tot = tot + (Convert.ToInt32(a[3].ToString()) * Convert.ToInt32(a[4].ToString()));
                }

                if (Int32.TryParse(a[2].ToString(), out b))
                {
                    tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[4].ToString()));
                }

                Session["tot"] = tot.ToString();
            }

            order_no = Class1.GetRandomPassword(5).ToString();
            Session["order_no"] = order_no.ToString();
            Response.Redirect("sucess.aspx");
        }
       
    }
}