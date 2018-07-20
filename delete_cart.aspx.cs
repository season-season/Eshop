using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class delete_cart : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();

    SqlConnection cn = new SqlConnection();
    
    String s, t;
    String[] a = new String[7];
    String productname, price, desc, category, qty, images;
    int id, productid,productqty;
    int count=0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        
        DataTable dt = new DataTable();
        
        dt.Rows.Clear();

        dt.Columns.AddRange(new DataColumn[8] { new DataColumn("productname"),new DataColumn("category"),

new DataColumn("desc"),new DataColumn("price"),new DataColumn("qty"),new DataColumn("images"), new DataColumn("id"), new DataColumn("productid")});
        
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
            }

        }

        count = 0;
        foreach(DataRow dr in dt.Rows)
        {
            if (count == id)
            {
            
            productid=Convert.ToInt32((dr["productid"]).ToString());
            productqty = Convert.ToInt32((dr["qty"]).ToString());
            }

            count = count + 1;

        }
        count = 0;

        SqlCommand cmd1 = cn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "Update Product set qty=qty+" + productqty + "where ID="+ productid;
        cmd1.Connection = gc.cn;
        cmd1.ExecuteNonQuery();
        cn.Close();

        dt.Rows.RemoveAt(id);
        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-(1));

       

        foreach (DataRow dr in dt.Rows)
        {
            productname = dr["productname"].ToString();
            price = dr["price"].ToString();
            desc = dr["desc"].ToString();
            category = dr["category"].ToString();
            qty = dr["qty"].ToString();
            images = dr["images"].ToString();
            productid =Convert.ToInt32(dr["productid"].ToString());
            
            count = count + 1;
            
            if (count==1)
            {
          
                Response.Cookies["aa"].Value = productname.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + category.ToString() + "," + qty.ToString() + "," + images.ToString() + "," + productid.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }
            else
            {
        
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + productname.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + category.ToString() + "," + qty.ToString() + "," + images.ToString() + "," + productid.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }

        }
    Response.Redirect("viewcart.aspx");
} }