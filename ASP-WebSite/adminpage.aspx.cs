using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminpage : System.Web.UI.Page
{
    public void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["nam"].ToString();
        Label2.Text = Session["mail"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         Session["nam"]=Label1.Text ;
         Session["mail"]=Label2.Text;
        Response.Redirect("adminreport.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Response.Redirect("admincompose.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow row = lnkbtn.NamingContainer as GridViewRow;
        Session["nm"] = row.Cells[1].Text;
        Session["eid"] = row.Cells[2].Text;
        Class1 c1 = new Class1();
        Class1 c2 = new Class1();
        Class1 c3 = new Class1();
        Class1 c4 = new Class1();
        Class1 c5 = new Class1();
        Class1 c6 = new Class1();
        c1.con.Open();
        c2.con.Open();
        c3.con.Open();
        c4.con.Open();
        c5.con.Open();
        c6.con.Open();
        SqlDataReader a,b,c,d,x,y;
        try
        {
            c1.cmd.CommandText = "DELETE FROM register where email ='" + Session["eid"].ToString() + "'";
            a = c1.cmd.ExecuteReader();
            c2.cmd.CommandText = "DELETE FROM message where myemail='" + Session["eid"].ToString() + "' OR friendemail='" + Session["eid"].ToString() +"'";
            b = c2.cmd.ExecuteReader();
            c3.cmd.CommandText = "DELETE FROM friendrequest where fromemail='" + Session["eid"].ToString() + "' OR toemail='" + Session["eid"].ToString() + "' ";
            c = c3.cmd.ExecuteReader();
            c4.cmd.CommandText = "DELETE FROM friend1 where myemail='" + Session["eid"].ToString() + "' OR femail='" + Session["eid"].ToString() + "' ";
            d = c4.cmd.ExecuteReader();
            c5.cmd.CommandText = "DELETE FROM post where myemail='" + Session["eid"].ToString() + "'";
            x = c5.cmd.ExecuteReader();
            c6.cmd.CommandText = "DELETE FROM report where toemail='" + Session["eid"].ToString() + "' OR fromemail='" + Session["eid"].ToString() + "'";
            y = c6.cmd.ExecuteReader();
            c1.con.Close();
            c2.con.Close();
            c3.con.Close();
            c4.con.Close();
            c5.con.Close();
            c6.con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        Response.Redirect("adminpage.aspx");
        }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        Session["eid"] = TextBox2.Text;
        Response.Redirect("adminsearch.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["nam"] = Label1.Text;
        Session["mail"] = Label2.Text;
        Response.Redirect("adminpostfromuser.aspx");
    }
}