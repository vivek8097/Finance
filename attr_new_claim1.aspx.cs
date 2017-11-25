using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class attr_new_claim1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    
    }
    protected void addbtn_onclick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("UPDATE CLAIM SET   from_src ='" + frm.Value + "' ,  to_dest =  '" + dest.Value + "' , amt_per_kim =   '" + amtpkm.Value + "'  , halts_in_day =   '" + haltinaday.Value + "', no_of_kilo =   '" + nokilo.Value + "' , traveling_class  = '"+ travelclass.SelectedValue  +"' WHERE CLAIM_ID = " + Request.QueryString["claim_id"], con);
        com.ExecuteScalar();
        con.Close();
        Response.Redirect("view_claim.aspx?alert=claim added successfully.");
    }
}