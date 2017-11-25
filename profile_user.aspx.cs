using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class profile_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Remove"] != null)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(@"delete from profile where uid='" + Request.QueryString["uid"].ToString() + "' and profile='" + Request.QueryString["profile"].ToString()  + "';", con);
            com1.ExecuteScalar();
            Response.Redirect("profile_user.aspx?alert=Profile successfully deleted.");
            con.Close();

        }
        if (Session["userid"] != null)
        {
            con.Open();
            SqlCommand com = new SqlCommand(@"SELECT users.username, user_type_mast.type , users.uid, user_type_mast.id  FROM users INNER JOIN profile ON users.uid = profile.uid INNER JOIN user_type_mast ON profile.profile = user_type_mast.id ", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();
            rd.Read();
            while (rd.Read())
            {
                string action = "";


                action += "<a href=\"profile_user.aspx?Remove=1&uid=" + rd.GetValue(2) + "&profile=" + rd.GetValue(3) + "\"><i class=\"glyphicon glyphicon-remove\"></i></span></a>";
                 
                //action += "Normaal";
                Literal1.Text += @"<tr><td>" + rd.GetValue(0) + "</td><td>" + rd.GetValue(1) + "</td><td class=\"toolbar\">" + action + "</td></tr>";
            }
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }

    }
    protected void addbtn_onclick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("INSERT  INTO profile (uid, profile) values( '"  + userid.SelectedValue + "' , '" + profile.SelectedValue + "');", con);
        com.ExecuteScalar();

        con.Close();
        Response.Redirect("profile_user.aspx?alert=Profile Succssfully Added.");
    }
}