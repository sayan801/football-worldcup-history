using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Text;
using System.IO;
using System.Data.SqlClient;

public partial class entertain : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "boiTHAKkhana here for entertain you." + "</font></marquee>";
        Label1.Text = Session["nam"].ToString();
        Label7.Text = Session["mail"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a, b;
        try
        {
            c1.cmd.CommandText = "SELECT name,img FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Label1.Text = a.GetString(0);
                Image1.ImageUrl = "~/Upload/" + a.GetString(1);
            }
            Session["img"] = Image1.ImageUrl;
            Session["nam"] = Label1.Text;

            c2.cmd.CommandText = "SELECT COUNT(fromemail) FROM friendrequest where status = 'No' AND toemail= '" + Session["mail"].ToString() + "'";
            b = c2.cmd.ExecuteReader();
            while (b.Read())
            {
                i = b.GetInt32(0);
                if (i == 0)
                {
                    Label3.Visible = false;
                }
                else
                {
                    Label3.Text = Convert.ToString(i);
                    Label3.Visible = true;
                }
            }
            c1.con.Close();
            c2.con.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.quikr.com/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "SELECT name,img FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Label1.Text = a.GetString(0);
                Image1.ImageUrl = "~/Upload/" + a.GetString(1);
            }
            Session["img"] = Image1.ImageUrl;
            Session["nam"] = Label1.Text;
            c1.con.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
    protected void  Button2_Click(object sender, EventArgs e)
{
         //Label3.Visible = false;
        Session["mail"] = Label7.Text;
        Response.Redirect("notifications.aspx");
}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label8.Visible = true;
    }
}
