using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class sucess : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
    SqlConnection cn = new SqlConnection();
    
        
    String s, t;
    String order="";
    String order_id;
    String em;
    String[] a = new String[7];

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = cn.CreateCommand();
        cmd.Connection = gc.cn;

        
        if (order == Session["order_no"].ToString()) ;
        {

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select *from userdetail where email='" + Session["user"].ToString() + "'";

            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {

                SqlCommand cmd1 = cn.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into userorder values('" + dr["firstname"].ToString() + "','" + dr["lastname"].ToString() + "','" + dr["email"].ToString() + "','" + dr["gender"].ToString() + "','" + dr["address"].ToString() + "','" + dr["city"].ToString() + "','" + dr["state"].ToString() + "','" + dr["pincode"].ToString() + "','" + dr["phone"].ToString()+"')";
                
                cmd1.Connection = gc.cn;

                cmd1.ExecuteNonQuery();
                em = dr["email"].ToString();

            }
            //getting last insertid on order id

            SqlCommand cmd2 = cn.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select top 1 *from userorder where email='" + Session["user"].ToString() + "' order by id desc";
            cmd2.Connection = gc.cn;

            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            foreach (DataRow dr2 in dt2.Rows)
            {
                order_id = dr2["id"].ToString();
            }

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

                    SqlCommand cmd3 = cn.CreateCommand();
                    cmd3.CommandType = CommandType.Text;
                    cmd3.CommandText = "insert into orderdetails values('" + order_id.ToString() + "','" + a[0].ToString() + "','" + a[1].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "','" + a[5].ToString() +  "','"+ em.ToString()+"')";
                    cmd3.Connection = gc.cn;

                    cmd3.ExecuteNonQuery();




                }

            }


            else
            {
                Response.Redirect("userlogin.aspx");

            }
            cn.Close();
            
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-(1));
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-(1));

            Response.Redirect("myaccount.aspx");
        }
    }

    
}