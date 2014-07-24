using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class editprofile : System.Web.UI.Page
{
    int i;
    protected void page_init(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "Edit your basic informations." + "</font></marquee>";
        Label7.Text = Session["mail"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
        Label1.Text = Session["nam"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a,b;
        try
        {
            c1.cmd.CommandText = "SELECT name,gen,db,ad,city,zip,state,num,reli,lang,country,school,col,deg,job,emp,look,likes,sprts FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {

                TextBox2.Text = a.GetString(0);
                TextBox5.Text = a.GetString(1);
                TextBox3.Text = a.GetString(2);
                TextBox4.Text = a.GetString(3);
                TextBox6.Text = a.GetString(4);
                TextBox7.Text = a.GetString(5);
                TextBox8.Text = a.GetString(6);
                TextBox10.Text = a.GetString(7);
                TextBox18.Text = a.GetString(8);
                TextBox21.Text = a.GetString(9);
                TextBox9.Text = a.GetString(10);
                TextBox11.Text = a.GetString(11);
                TextBox12.Text = a.GetString(12);
                TextBox20.Text = a.GetString(13);
                TextBox13.Text = a.GetString(14);
                TextBox14.Text = a.GetString(15);
                TextBox15.Text = a.GetString(16);
                TextBox17.Text = a.GetString(17);
                TextBox16.Text = a.GetString(18);
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
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "SELECT name FROM register where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            if (a.Read())
            {
                Label1.Text = a.GetString(0);
            }
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        Calendar1.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "";
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "";
        DropDownList1.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox6.Text = "";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox7.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox8.Text = "";
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox9.Text = "";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        TextBox10.Text = "";
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox11.Text = "";
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        TextBox12.Text = "";
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        TextBox20.Text = "";
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        TextBox13.Text = "";
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        TextBox14.Text = "";
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        TextBox15.Text = "";
        DropDownList2.Visible = true;
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        TextBox16.Text = "";
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        TextBox17.Text = "";
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        TextBox18.Text = "";
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        TextBox21.Text = "";
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        SqlDataReader a;
        try
        {
            c1.cmd.CommandText = "UPDATE register SET name='" + TextBox2.Text + "',gen='" + TextBox5.Text + "',db='" + TextBox3.Text + "',ad='" + TextBox4.Text + "',city='" + TextBox6.Text + "',zip='" + TextBox7.Text + "',state='" + TextBox8.Text + "',num='" + TextBox10.Text + "',reli='" + TextBox18.Text + "',lang='" + TextBox21.Text + "',country='" + TextBox9.Text + "',school='" + TextBox11.Text + "',col='" + TextBox12.Text + "',deg='" + TextBox20.Text + "',job='" + TextBox13.Text + "',emp='" + TextBox14.Text + "',look='" + TextBox15.Text + "',likes='" + TextBox17.Text + "',sprts='" + TextBox16.Text + "' where email='" + Session["mail"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            Label8.Visible = true;
            Session["nam"] = TextBox2.Text;
            Session["mail"] = Label7.Text;
            Session["img"] = Image1.ImageUrl;
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
            Label9.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox5.Text = DropDownList1.SelectedItem.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox15.Text = DropDownList2.SelectedItem.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label7.Text;
        Response.Redirect("notifications.aspx");
    }


    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.quikr.com/");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.makemytrip.com/");
    }
}