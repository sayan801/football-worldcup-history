using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Class1
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
	public Class1()
	{
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\tatz\\Desktop\\website1\\WebSite1\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        cmd.Connection = con;
	}
}