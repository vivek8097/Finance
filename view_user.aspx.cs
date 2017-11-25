using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Remove"] != null)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(@"delete from users where uid='" + Request.QueryString["uid"].ToString() + "';", con);
            com1.ExecuteScalar();
            Response.Redirect("view_user.aspx?alert=User successfully Deleted.");
            con.Close();

        }
        if (Request.QueryString["enable"] != null)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(@"update  users set active =1 where uid='" + Request.QueryString["uid"].ToString() + "';", con);
            com1.ExecuteScalar();
            Response.Redirect("view_user.aspx?alert=User successfully enabled.");
            con.Close();

        }
        if (Request.QueryString["disable"] != null)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(@"update  users set active =0 where uid='" + Request.QueryString["uid"].ToString() + "';", con);
            com1.ExecuteScalar();
            Response.Redirect("view_user.aspx?alert=User successfully disabled.");
            con.Close();

        }
        if (Session["userid"] != null)
        {
            con.Open();
            SqlCommand com = new SqlCommand(@"SELECT        uid, username, fname, lname, designation,  department, CASE WHEN active = '1' THEN 'Active' ELSE 'Disabled' END AS active
FROM            users", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();
            rd.Read();
            while (rd.Read())
            {
                string action = "";

                 
                action += "<a href=\"view_user.aspx?Remove=1&uid=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-remove\"></i></span></a>";
                action += "<a href=\"view_user.aspx?disable=1&uid=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-lock\"></i></span></a>";
                action += "<a href=\"view_user.aspx?enable=1&uid=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-ok\"></i></span></a>";
                action += "<a href=\"view_user_detail.aspx?uid=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-search\"></i></span></a>";
                //action += "Normaal";
                Literal1.Text += @"<tr><td>" + rd.GetValue(0) + "</td><td>" + rd.GetValue(1) + "</td><td>" + rd.GetValue(2) + "</td>  <th>" + rd.GetValue(3) + "</td><td>" + rd.GetValue(4) + "</td><td>" + rd.GetValue(5) + "</td> <td>" + rd.GetValue(6) +"</td ><td class=\"toolbar\">" + action + "</td></tr>";
            }
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }

    }
}