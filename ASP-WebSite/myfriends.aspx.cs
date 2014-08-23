using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class myfriends : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "My friends at boiTHAKkhana." + "</font></marquee>";
        Label7.Text = Session["mail"].ToString();
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
        Session["mail"] = Label7.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["eid"] = row.Cells[2].Text;
        Response.Redirect("friendsprof.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Response.Redirect("compose.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["eid"] = row.Cells[2].Text;
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "DELETE FROM friend1 where (femail = '" + Session["eid"].ToString() + "' AND myemail = '" + Session["mail"].ToString() + "') or (myemail = '" + Session["eid"].ToString() + "' AND femail = '" + Session["mail"].ToString() + "')";
            a = c1.cmd.ExecuteReader();
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("myfriends.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["eid"] = row.Cells[2].Text;
        Response.Redirect("friendsprof.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Response.Redirect("compose.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["eid"] = row.Cells[2].Text;
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "DELETE FROM friend1 where (femail = '" + Session["eid"].ToString() + "' AND myemail = '" + Session["mail"].ToString() + "') or (myemail = '" + Session["eid"].ToString() + "' AND femail = '" + Session["mail"].ToString() + "')";
            a = c1.cmd.ExecuteReader();
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("myfriends.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/");
    }
}