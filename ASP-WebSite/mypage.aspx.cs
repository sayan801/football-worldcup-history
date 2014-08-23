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
using Microsoft.ApplicationBlocks.Data;


public partial class mypage : System.Web.UI.Page
{
    int i,j;
    public void Page_Load(object sender, EventArgs e)
    {   
        Label1.Text = Session["nam"].ToString();
        Label6.Text = Session["mail"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        Class1 c7 = new Class1();
        c1.con.Open();
        c2.con.Open();
        c7.con.Open();
        SqlDataReader a,b,c;
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
                if(i==0)
                {
                    Label3.Visible = false;
                }
                else
                {
                    Label3.Text = Convert.ToString(i);
                    Label3.Visible = true;
                }
            }
            c7.cmd.CommandText = "SELECT COUNT(status) FROM friend1 where status = 'yes' AND (myemail= '" + Session["mail"].ToString() + "' OR femail= '" + Session["mail"].ToString() + "')";
            c = c7.cmd.ExecuteReader();
            while (c.Read())
            {
                j = c.GetInt32(0);
                if (j == 0)
                {
                    Label5.Visible = false;
                }
                else
                {
                    Label5.Text = Convert.ToString(j);
                    Label5.Visible = true;
                }
            }
            c1.con.Close();
            c2.con.Close();
            c7.con.Close();
           
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label6.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/");
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        Class1 c3 = new Class1();
        Class1 c2 = new Class1();
        Class1 c4 = new Class1();
        Class1 c5 = new Class1();
        c3.con.Open();
        c2.con.Open();
        c1.con.Open();
        c4.con.Open();
        c5.con.Open();
        SqlDataReader a,b,c,d,f;
        try
        {
            DateTime dt1;
            dt1 = DateTime.Now;
            c3.cmd.CommandText = "SELECT * FROM friend1 where myemail='" + Session["mail"].ToString() + "' ";
            c = c3.cmd.ExecuteReader();
            if (c.Read())
            {
                Session["myemail"] = c.GetString(0);
                Session["mynm"] = c.GetString(1);
                Session["myimg"] = c.GetString(2);
            }
            c4.cmd.CommandText = "SELECT fimg FROM friend1 where myemail='" + Session["mail"].ToString() + "' ";
            d = c4.cmd.ExecuteReader();
               if(d.Read())
                Session["fimg"] = d.GetString(0);
               c5.cmd.CommandText = "SELECT femail FROM friend1 where myemail='" + Session["mail"].ToString() + "' ";
               f = c5.cmd.ExecuteReader();
               if (f.Read())
                Session["femail"] = f.GetString(0);
               c1.cmd.CommandText = "SELECT fnm FROM friend1 where myemail='" + Session["mail"].ToString() + "' ";
               a = c1.cmd.ExecuteReader();
               if (a.Read())
                Session["fnm"] = a.GetString(0);
            
            
            c2.cmd.CommandText = "INSERT INTO post values('" + Session["myimg"].ToString() + "','" + Session["mynm"].ToString() + "','" + Session["myemail"].ToString() + "','" + TextBox3.Text + "','" + dt1 + "','" + "null" + "','" + "null" + "','" + Session["fimg"].ToString() + "','" + Session["fnm"].ToString() + "','" + Session["femail"].ToString() + "','"+ "No" +"')";
            b = c2.cmd.ExecuteReader();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        c1.con.Close();
        c4.con.Close();
        c3.con.Close();
        c5.con.Close();
        c2.con.Close();
        Response.Redirect("mypage.aspx");
    }

}