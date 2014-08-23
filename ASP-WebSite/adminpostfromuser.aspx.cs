using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminpostfromuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["nam"].ToString();
        Label2.Text = Session["mail"].ToString();
    }
     protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["nam"] = Label1.Text;
        Session["mail"] = Label2.Text;
        Response.Redirect("adminpage.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        //Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[1].Text;
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "DELETE FROM post where myemail='" + Session["eid"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("adminpostfromuser.aspx");
    }
}