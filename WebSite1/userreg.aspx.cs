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

public partial class userreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "<marquee direction=left><font face=arial size=4>" + "No one can stop us from making the world closer...!!!" + "</font></marquee>";
        Label4.Text = Session["nam"].ToString();
        Label5.Text = Session["mail"].ToString();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c1 = new Class1();
        c1.con.Open();
        Session["nam"] = Label4.Text;
        Session["mail"] = Label5.Text;
        SqlDataReader a;
        try
        {
               string pat = Server.MapPath(".");
                string bb = FileUpload1.PostedFile.ContentType;
                if (bb == "image/gif" || bb == "image/jpeg" || bb == "image/png" || bb == "image/pjpeg")
                {
                    FileUpload1.SaveAs(pat + "/Upload/" + FileUpload1.FileName);
                    //FileUpload1.PostedFile.SaveAs(Server.MapPath(pat + "~/Upload/" + FileUpload1.FileName)); 
                    //Image1.ImageUrl = "~/Upload/" + FileUpload1.FileName;
                }
                else
                {
                    Label2.Text = "<font color=red> Invalid filetype </font>";
                    Label2.Visible = true;
                    return;
                }
                
                c1.cmd.CommandText = "UPDATE register SET ad='" + TextBox1.Text + "',city='" + TextBox2.Text + "',zip='" + TextBox3.Text + "',state='" + TextBox4.Text + "',num='" + TextBox5.Text + "',reli='" + TextBox6.Text + "',lang='" + TextBox7.Text + "',country='" + TextBox8.Text + "',img='"+FileUpload1.FileName+"' where email='" + Session["mail"].ToString() + "'";
                a = c1.cmd.ExecuteReader();
                Response.Redirect("userreg1.aspx");
                c1.con.Close();
            }
        
        catch (Exception ex)
        {
            Label3.Text = ex.Message;
            Label3.Visible = true;
        }

    }

}