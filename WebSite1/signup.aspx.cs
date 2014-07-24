using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "<marquee direction=left><font face=arial size=4>" + "Welcome to boiTHAKkhana.....Express yourself" + "</font></marquee>";
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox6.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Class1 c1 = new Class1();
            c1.con.Open();
            Session["mail"] = TextBox2.Text;
            Session["nam"] = TextBox1.Text;
            string s1 = "INSERT INTO register values(@name,@email,@pass,@gen,@db,@ad,@city,@zip,@state,@num,@reli,@lang,@country,@img,@school,@col,@deg,@job,@emp,@look,@likes,@sprts)";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(s1, c1.con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox4.Text);
            cmd.Parameters.AddWithValue("@gen", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@db", TextBox6.Text);
            cmd.Parameters.AddWithValue("@ad", 0);
            cmd.Parameters.AddWithValue("@city", 0);
            cmd.Parameters.AddWithValue("@zip", 0);
            cmd.Parameters.AddWithValue("@state", 0);
            cmd.Parameters.AddWithValue("@num", 0);
            cmd.Parameters.AddWithValue("@reli", 0);
            cmd.Parameters.AddWithValue("@lang", 0);
            cmd.Parameters.AddWithValue("@country", 0);
            cmd.Parameters.AddWithValue("@img", 0);
            cmd.Parameters.AddWithValue("@school", 0);
            cmd.Parameters.AddWithValue("@col", 0);
            cmd.Parameters.AddWithValue("@deg", 0);
            cmd.Parameters.AddWithValue("@job", 0);
            cmd.Parameters.AddWithValue("@emp", 0);
            cmd.Parameters.AddWithValue("@look", 0);
            cmd.Parameters.AddWithValue("@likes", 0);
            cmd.Parameters.AddWithValue("@sprts", 0);
            cmd.ExecuteNonQuery();
            c1.con.Close();
            Response.Redirect("userreg.aspx");
        }

        catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
        }
         
    }
}
