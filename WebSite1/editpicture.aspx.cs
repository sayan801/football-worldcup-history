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
using System.Drawing;
using System.Web.Security;
using System.Text;

public partial class editpicture : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "<marquee direction=left><font face=arial size=4>" + "Change your profile picture." + "</font></marquee>";
        Label7.Text = Session["mail"].ToString();
        Image1.ImageUrl = Session["img"].ToString();
        Label1.Text = Session["nam"].ToString();
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        c1.con.Open();
        c2.con.Open();
        SqlDataReader a,b;
        c1.cmd.CommandText = "SELECT name,img FROM register where email='" + Session["mail"].ToString() + "'";
        a = c1.cmd.ExecuteReader();
        if (a.Read())
        {
            Image1.ImageUrl = "~/Upload/" + a.GetString(1);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        //SqlDataAdapter a;
        try
        {
            string pat = Server.MapPath(".");
            string bb = FileUpload1.PostedFile.ContentType;
            if (bb == "image/gif" || bb == "image/jpeg" || bb == "image/png" || bb == "image/pjpeg" || bb == "image/jpg")
            {
                FileUpload1.SaveAs(pat + "/Upload/" + FileUpload1.FileName);
                //FileUpload1.PostedFile.SaveAs(Server.MapPath(pat + "~/Upload/" + FileUpload1.FileName)); 
                Image3.ImageUrl = "~/Upload/" + FileUpload1.FileName;
            }
            else
            {
                Label8.Text = "<font color=red> Invalid filetype </font>";
                Label8.Visible = false;
                return;
            }
            //c1.cmd.CommandText = "UPDATE register1 SET img='"+ FileUpload1.FileName +"' where email='"+Session["mail"].ToString()+"'";
            //a = c1.cmd.ExecuteReader();
            string s1 = "UPDATE register SET img='" + FileUpload1.FileName + "' where email='" + Session["mail"].ToString() + "'";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(s1, c1.con);
            cmd.Parameters.AddWithValue("@img", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            c1.con.Close();
        }
        catch (Exception ex)
        {
            Label9.Text = ex.Message;
            Label9.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        Button4.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
            Class1 c1 = new Class1();
            SqlDataReader a;

            try
            {
                c1.con.Open();
                c1.cmd.CommandText = "UPDATE register SET pass='" + TextBox3.Text + "' where email = '" + Session["mail"].ToString() + "' ";
                a = c1.cmd.ExecuteReader();
                Label12.Visible = true;
            }
            catch (Exception ex)
            {
                Label13.Text = ex.Message;
                Label13.Visible = true;
            }
            finally
            {
                c1.con.Close();
            }
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Session["mail"] = Label7.Text;
        Response.Redirect("notifications.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.olx.in/");
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
