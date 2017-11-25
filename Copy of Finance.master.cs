using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Finance : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {

            string src;
            string usid = Convert.ToString(Session["userid"]);
            con.Open();
            SqlCommand com = new SqlCommand("select fname,lname,designation,department from [USERS] where uid='" + usid + "';", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();
            rd.Read();

            if (rd.HasRows == false)
            {
                Response.Redirect("login.aspx?alert=Kindly Login to access this page.");

            }
            else
            {
                string fname = Convert.ToString(rd.GetValue(0));

                uname.InnerText = "Welcome " + fname + " " + Convert.ToString(rd.GetValue(1));
                profile.InnerText = Convert.ToString(rd.GetValue(2));
            }
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }
        con.Close();
    }
}
