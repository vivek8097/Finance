using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class fin_view_claim_status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] != null)
        {
            con.Open();
            SqlCommand com = new SqlCommand(@"SELECT        claim_type
FROM            claim  where claim_id='" + Request.QueryString["claim_id"] + "';", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();
            rd.Read();
            if (rd.GetValue(0).ToString() == "1")
            {
                DetailsView3.Visible = false;
            }
            if (rd.GetValue(0).ToString() == "2")
            {
                DetailsView2.Visible = false;
            }
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }
    }
}