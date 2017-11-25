using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["alert"] != null)
        {
            Literal2.Text = "$.jGrowl(\"" + Request.QueryString["alert"].ToString() + "\", {   theme: 'success'  });";

        }
    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand com = new SqlCommand("select a.password, a.username, a.uid, b.profile from [USERS] a left join profile b on a.uid=b.uid where a.username='" + uname.Value + "' and a.password= '"+Password.Value+"' and b.profile= '"+usertype.SelectedValue+"' and active ='1' ;", con);
        SqlDataReader rd = null;
        rd = com.ExecuteReader();
        rd.Read();

        if (rd.HasRows == false)
        {
            Response.Redirect("login.aspx?alert=Enter proper username, password and user profile");
        }
        else
        {
            string pass = Convert.ToString(rd.GetValue(0));
            String usid = Convert.ToString(rd.GetValue(2));
            string acctype = Convert.ToString(rd.GetValue(3));
            if (acctype == "1")
            {
                Session["userid"] = usid;
                con.Close();
                Response.Redirect("emphome.aspx");

            }
            else if (acctype == "2")
            {
                Session["userid"] = usid;
                con.Close();
                Response.Redirect("divhome.aspx");
                //alert.Text = "*Enter Correct User Name and Password.";
            }
            else if (acctype == "3")
            {
                Session["userid"] = usid;
                con.Close();
                Response.Redirect("finhome.aspx");
            }
            else if (acctype == "4")
            {
                Session["userid"] = usid;
                con.Close();
                Response.Redirect("hrhome.aspx");
            }
            else
            {

            }



        }
        con.Close();
        
        
    }
}