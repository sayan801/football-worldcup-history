using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class compose : System.Web.UI.Page
{
    public void page_init(object sender, EventArgs e)
    {
        Label9.Text = Session["nm"].ToString();
        Label10.Text = Session["eid"].ToString();
    }
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "No one can stop us from making the world closer...!!!" + "</font></marquee>";
        Label11.Text = Session["mail"].ToString();
        Label1.Text = Session["nam"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
        Class1 c2 = new Class1();
        c2.con.Open();
        SqlDataReader b;
        try
        {
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
        Session["mail"] = Label11.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        Class1 c3 = new Class1();
        c1.con.Open();
        c2.con.Open();
        c3.con.Open();
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
                Session["nam"] = a.GetString(1);
                //  Session["eid"] = a.GetString(2);
            }
            c3.cmd.CommandText= "SELECT email FROM register where name ='"+Session["nm"].ToString()+"'";
            a = c3.cmd.ExecuteReader();
            if (a.Read())
            {
                Session["eid"] = a.GetString(0);
            }

            c2.cmd.CommandText = "INSERT INTO message values('" + Session["mail"].ToString() + "','" +Session["eid"].ToString() + "','" + Session["nam"].ToString() + "','" + Session["imge"].ToString() + "','" + dt + "','" + TextBox2.Text + "','" + "No" + "')";
            a = c2.cmd.ExecuteReader();
            Label8.Visible = true;
            c1.con.Close();
            c2.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
}