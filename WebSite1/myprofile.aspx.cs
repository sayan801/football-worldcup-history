using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Text;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;
using System.Configuration;
using System.Drawing;

public partial class myprofile : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "Watchout basic informations." + "</font></marquee>";
        Label26.Text = Session["mail"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
        Label1.Text = Session["nam"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a,b;
        try
        {
            c1.cmd.CommandText = "SELECT name,email,gen,db,ad,city,zip,state,num,reli,lang,country,school,col,deg,job,emp,look,likes,sprts FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Label1.Text = a.GetString(0);
                Label7.Text = a.GetString(0);
                Label14.Text = a.GetString(1);
                Label8.Text = a.GetString(2);
                Label15.Text = a.GetString(3);
                Label27.Text = a.GetString(4);
                Label9.Text = a.GetString(5);
                Label10.Text = a.GetString(6);
                Label11.Text = a.GetString(7);
                Label13.Text = a.GetString(8);
                Label24.Text = a.GetString(9);
                Label25.Text = a.GetString(10);
                Label12.Text = a.GetString(11);
                Label16.Text = a.GetString(12);
                Label17.Text = a.GetString(13);
                Label18.Text = a.GetString(14);
                Label20.Text = " as " + a.GetString(15);
                Label19.Text = a.GetString(16);
                Label21.Text = a.GetString(17);
                Label23.Text = a.GetString(18);
                Label22.Text = a.GetString(19);
            }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label26.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/v");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.quikr.com/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.justdial.com");
    }
}
