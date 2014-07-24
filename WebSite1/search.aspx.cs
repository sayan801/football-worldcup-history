using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class search : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "boiTHAKAkhana showing the search results" + "</font></marquee>";
    }

    protected void page_init(object sender, EventArgs e)
    {
        TextBox1.Text = Session["search"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a,b;
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
   protected void Button2_Click(object sender, EventArgs e)
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
       //Label3.Visible = false;
       //Session["mail"] = Label6.Text;
       Response.Redirect("notifications.aspx");
   }
   protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
   {
       Response.Redirect("http://www.yatra.com/");
   }
   protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
   {
       Response.Redirect("http://www.quikr.com/");
   }
   protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
   {
       Response.Redirect("http://www.flipkart.com/");
   }
   protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
   {
       Response.Redirect("http://www.makemytrip.com/");
   }
}
