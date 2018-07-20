using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for adminlogin
/// </summary>
public class adminlogin
{
       Globalconnection gc = new Globalconnection();


       public DataTable CheckUser(string t1, string t2)
       {
   


         
        string data = "Select * From adminlogin Where username='" + t1 + "' and Password='" + t2 + "'";
        SqlDataAdapter da = new SqlDataAdapter(data, gc.cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Users");
        return ds.Tables[0];


    

		//
		// TODO: Add constructor logic here
		//
	}
}