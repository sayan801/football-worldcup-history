using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;

public partial class login : System.Web.UI.Page
{
    //string con = System.Configuration.ConfigurationManager.AppSettings["conn"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
         Class1 c1 = new Class1();
        SqlDataReader ab;

        try
        {
            c1.con.Open();
            c1.cmd.CommandText = "SELECT name FROM register where email='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            ab = c1.cmd.ExecuteReader();

            if (ab.Read())
            {
                Session["mail"] = TextBox1.Text;
                Session["nam"] = ab.GetValue(0).ToString();
                Response.Redirect("mypage.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
            Label1.Visible = true;
        }
        finally
        {
            c1.con.Close();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        if (ViewState["imagedisplayed"] == null)
        {
            Image1.ImageUrl = "~/Image/1.jpg";
            ViewState["imagedisplayed"] = 1;
        }
        else
        {
            int i = (int)ViewState["imagedisplayed"];

            if (i == 14)
            {
                Image1.ImageUrl = "~/Image/" + "1.jpg";
                ViewState["imagedisplayed"] = 1;
            }
            else
            {
                i = i + 1;
                Image1.ImageUrl = "~/Image/" + i.ToString() + ".jpg";
                ViewState["imagedisplayed"] = i;
            }
        }
    }
    
}
