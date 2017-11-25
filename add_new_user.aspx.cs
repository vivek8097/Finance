using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class add_new_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e) 
    {

    }
    protected void addbtn_onclick(object sender, EventArgs e)
    {
        string enb;
        if(activate.Checked ==true )
        {
            enb = "1";
        }
        else
        {
            enb = "0";
        }
        con.Open();
        SqlCommand com1 = new SqlCommand ("select username from users where username = '" + usernametxt.Value + "' ;", con);
        SqlDataReader rd  = com1.ExecuteReader();
        rd.Read();
        if (rd.HasRows == true)
        {
            Response.Redirect("add_new_user.aspx?alert=User id allready in use.");
        }
        else
        {
            con.Close();
            con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO USERS (  uid, username, fname, lname, designation, password, department, location, active, acct_no) select case when count(uid)=0 then 0 else max(uid)+1 end as uid, '" + usernametxt.Value + "', '" + fname.Value + "', '" + lname.Value + "' , '" + design.SelectedValue + "' , '" + passwordtxt.Value + "', '" + depart.SelectedValue + "' ,'0' , '" + enb + "' , '"+ acct.Value +"'  from users ;", con);
            com.ExecuteScalar();
            con.Close();
            con.Open();
            SqlCommand com2 = new SqlCommand("INSERT INTO bank (  acct_no, amt) values('" + acct.Value + "', 0);", con);
            com2.ExecuteScalar();
            con.Close();
            Response.Redirect("view_user.aspx?alert=New User is Succesfully created.");
        }
    }

}