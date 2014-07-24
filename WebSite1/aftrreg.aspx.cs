using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class aftrreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "<marquee direction=left><font face=arial size=4>" + "No one can stop us from making the world closer...!!!" + "</font></marquee>";
        Label2.Text = Session["nam"].ToString();
        Label3.Text = Session["mail"].ToString();
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "SELECT img FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Image1.ImageUrl ="~/Upload/"+a.GetString(0);
            }
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        Session["nam"] = Label2.Text;
        Session["mail"] = Label3.Text;
        Session["img"] = Image1.ImageUrl;
        try
        {
            Response.Redirect("myprofile.aspx");
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
}