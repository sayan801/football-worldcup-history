using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        Session["nam"] = TextBox1.Text;
        Session["mail"] = TextBox2.Text;
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "INSERT INTO admin values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')";
            a = c1.cmd.ExecuteReader();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        c1.con.Close();
        Response.Redirect("adminpage.aspx");
    }
}
