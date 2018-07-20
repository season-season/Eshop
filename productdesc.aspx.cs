using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class productdesc : System.Web.UI.Page
{
    Globalconnection gc = new Globalconnection();
       SqlConnection cn = new SqlConnection();
    String productname,price,desc,category,qty,images;
    int id,productqty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
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

            cn.Close();
            

        }
        productqty= get_qty(id);
        if (productqty == 0){
            l2.Visible=false;
            t1.Visible=false;
            b1.Visible=false;
            l1.Text="Product is Out of stock";
        }
    }
    protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       


    }
protected void b1_Click(object sender, EventArgs e)
{
    if (cn.State == ConnectionState.Open)
    {
        cn.Close();
    }
    
    
        SqlCommand cmd = cn.CreateCommand();
        cmd.Connection = gc.cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from Product where ID=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            
            productname = dr["productname"].ToString();
            desc = dr["productdesc"].ToString();
            category = dr["category"].ToString();
            price=dr["price"].ToString();
            qty=dr["qty"].ToString();
            images=dr["product_images"].ToString();
            

        }
       

        if (Convert.ToInt32(t1.Text) > Convert.ToInt32(qty))
        {
            l1.Text = "Please Enter Lower Quantity";
        }
        
        else
        {
            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = productname.ToString() + "," + desc.ToString() + "," + category.ToString() + "," + price.ToString() + "," + t1.Text + "," + images.ToString() + "," + id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {

                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + productname.ToString() + "," + desc.ToString() + "," + category.ToString() + "," + price.ToString() + "," + t1.Text + "," + images.ToString() + "," + id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }

            SqlCommand cmd1 = cn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Update Product set qty=qty-" + t1.Text + "where ID=" + id;
            cmd1.Connection = gc.cn;
            cmd1.ExecuteNonQuery();
            Response.Redirect("productdesc.aspx?id=" + id.ToString());
            t1.Text = "";
        }
}
    public int get_qty(int id){

        
     SqlCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *from Product where ID=" + id + "";
        cmd.Connection = gc.cn;
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            productqty=Convert.ToInt32(dr["qty"].ToString());
        }
        return productqty;
}

}
