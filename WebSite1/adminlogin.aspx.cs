using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        SqlDataReader ab;

        try
        {
            c1.con.Open();
            c1.cmd.CommandText = "SELECT name FROM admin where email='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            ab = c1.cmd.ExecuteReader();

            if (ab.Read())
            {
                Session["mail"] = TextBox1.Text;
                Session["nam"] = ab.GetValue(0).ToString();
                Response.Redirect("adminpage.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            c1.con.Close();
        }
    }
}