using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class friendsprof : System.Web.UI.Page
{
    string s,s1;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = "<marquee direction=left><font face=arial size=4>" + "Watchout basic informations." + "</font></marquee>";
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        Class1 c3 = new Class1();
        Class1 c4 = new Class1();
        c1.con.Open();
        c2.con.Open();
        c3.con.Open();
        c4.con.Open();
        SqlDataReader a,b,c,d;
        try
        {
            c4.cmd.CommandText = "SELECT status FROM friend1 where (myemail='" + Session["mail"].ToString() + "' AND femail='" + Session["eid"].ToString() + "') or (femail='" + Session["mail"].ToString() + "' AND myemail='" + Session["eid"].ToString() + "')";
            d = c4.cmd.ExecuteReader();
            if (d.Read())
                s1 = d.GetString(0);
                
                    c1.cmd.CommandText = "SELECT name,email,gen,db,ad,city,zip,state,num,reli,lang,country,img,school,col,deg,job,emp,look,likes,sprts FROM register where email='" + Session["eid"].ToString() + "'";
                    a = c1.cmd.ExecuteReader();
            while (a.Read())
                    { 
                        Label8.Text = a.GetString(0);
                        Label15.Text = a.GetString(1);
                        Label16.Text = a.GetString(2);
                        Image2.ImageUrl = "~/Upload/" + a.GetString(12);
                       if (s1 == "yes")
                       {
                        Label17.Text = a.GetString(3);
                        Label9.Text = a.GetString(4);
                        Label10.Text = a.GetString(5);
                        Label11.Text = a.GetString(6);
                        Label12.Text = a.GetString(7);
                        Label14.Text = a.GetString(8);
                        Label27.Text = a.GetString(9);
                        Label26.Text = a.GetString(10);
                        Label13.Text = a.GetString(11);
                        Label18.Text = a.GetString(13);
                        Label19.Text = a.GetString(14);
                        Label22.Text = a.GetString(15);
                        Label21.Text = " as " + a.GetString(16);
                        Label20.Text = a.GetString(17);
                        Label23.Text = a.GetString(18);
                        Label24.Text = a.GetString(19);
                        Label25.Text = a.GetString(20);
                    }
                
                else
                {
                        Label9.Visible = false;
                        Label10.Visible = false;
                        Label11.Visible = false;
                        Label12.Visible = false;
                        Label13.Visible = false;
                        Label14.Visible = false;
                        Label17.Visible = false;
                        Label18.Visible = false;
                        Label19.Visible = false;
                        Label20.Visible = false;
                        Label21.Visible = false;
                        Label22.Visible = false;
                        Label23.Visible = false;
                        Label24.Visible = false;
                        Label25.Visible = false;
                        Label26.Visible = false;
                        Label27.Visible = false;
                        Label30.Visible = true;
                    }
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
            c3.cmd.CommandText = "SELECT status FROM friend1 where (myemail='" + Session["mail"].ToString() + "' AND femail='" + Session["eid"].ToString() + "') or (femail='" + Session["mail"].ToString() + "' AND myemail='" + Session["eid"].ToString() + "')";
            c = c3.cmd.ExecuteReader();
            while (c.Read())
            {
                s = c.GetString(0);
                if (s == "yes")
                {
                    Button3.Visible = false;
                    Label29.Visible = true;
                }
                else
                {
                    Button3.Visible = false;
                    Label28.Visible = true;
                }
            }
            c1.con.Close();
            c1.con.Close();
            c3.con.Close();
            c4.con.Close();
        }

        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
      
    public void page_init(object sender, EventArgs e)
    {
        //TextBox1.Text = Session["search"].ToString();
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "SELECT name,email FROM register where email='" + Session["eid"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Session["nm"] = a.GetString(0);
                Session["eid"] = a.GetString(1);
                Response.Redirect("compose.aspx");
            }
        c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       Class1 c1 = new Class1();
       Class1 c2 = new Class1();
       c1.con.Open();
       c2.con.Open();
       SqlDataReader a;
       try
       {
           DateTime dt;
           dt = DateTime.Now;
           c1.cmd.CommandText = "SELECT img,name FROM register where email='" + Session["mail"].ToString() + "'";
           a = c1.cmd.ExecuteReader();
           if (a.Read())
           {
               Session["imge"] = a.GetString(0);
               Session["nm"] = a.GetString(1);
             //  Session["eid"] = a.GetString(2);
           }
            c2.cmd.CommandText = "INSERT INTO friendrequest values('" + Session["mail"].ToString() + "','" + Session["eid"].ToString() + "','" + Session["nm"].ToString() + "','" + Session["imge"].ToString() + "','" + dt + "','" + "No" + "')";
           a = c2.cmd.ExecuteReader();
           Button3.Visible = false;
           Label28.Visible = true;
           c1.con.Close();
           c2.con.Close();
       }
       catch (Exception ex)
       {
           Console.WriteLine(ex.ToString());
       }
     }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label6.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.justdial.com");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a,b;
        try
        {
            c1.cmd.CommandText = "SELECT name,email FROM register where email='" + Session["eid"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Session["nm"] = a.GetString(0);
                Session["eid"] = a.GetString(1);
                
            }
            c2.cmd.CommandText = "INSERT INTO report values('" + Session["nam"].ToString() + "','" + Session["mail"].ToString() + "','" + Session["nm"].ToString() + "','" + Session["eid"].ToString() + "')";
            b = c2.cmd.ExecuteReader();
            c1.con.Close();
            c2.con.Close();
            Label31.Visible = true;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }

    }
}
