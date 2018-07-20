using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Globalconnection
/// </summary>
public class Globalconnection

{
    public SqlConnection cn;
	public Globalconnection()
	{
        string sqlcon = System.Configuration.ConfigurationManager.AppSettings.Get("MyConnection").ToString();
        cn = new SqlConnection(sqlcon);
        cn.Open();
	
	}
}