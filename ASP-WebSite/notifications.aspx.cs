using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class notifications : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "Watchout updates from friends." + "</font></marquee>";
        Label7.Text = Session["mail"].ToString();
        Label1.Text = Session["nam"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
        Class1 c2 = new Class1();
        c2.con.Open();
        SqlDataReader  b;
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label7.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        //Session["imge"] = "~/Upload/" + row.Cells[0].Text;
        Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        Class1 c3 = new Class1();
        c1.con.Open();
        c2.con.Open();
        c3.con.Open();
        SqlDataReader a,b,c;
        try
        {
            DateTime dt;
            dt = DateTime.Now;
            c3.cmd.CommandText = "SELECT img FROM register where email ='" + Session["eid"].ToString() + "'";
            c = c3.cmd.ExecuteReader();
            if (c.Read())
            {
                Session["imge"] = "~/Upload/" + c.GetString(0);
            }
           // c1.cmd.CommandText = "INSERT INTO friend values('" + Session["mail"].ToString() + "','" + Session["eid"].ToString() + "','" + Session["nm"].ToString() + "','" + Session["imge"].ToString() + "','" + dt + "','" + "yes" +"')";
            c1.cmd.CommandText = "INSERT INTO friend1 values('" + Session["mail"].ToString() + "','" + Session["nam"].ToString() + "','" + Session["img"].ToString() + "','" + Session["eid"].ToString() + "','" + Session["nm"].ToString() + "','" + Session["imge"].ToString() + "','" + dt + "','" + "yes" + "')";
            a = c1.cmd.ExecuteReader();

            c2.cmd.CommandText = "DELETE FROM friendrequest where fromemail = '" + Session["eid"].ToString() + "' AND toemail = '" + Session["mail"].ToString() + "'";
            b = c2.cmd.ExecuteReader();
            c1.con.Close();
            c2.con.Close();
            c3.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("friendsprof.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        //Session["imge"] = row.Cells[0].Text;
        //Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "DELETE FROM friendrequest where fromemail = '" + Session["eid"].ToString() + "' AND toemail = '" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("notifications.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.justdial.com");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.quikr.com/");
    }
}