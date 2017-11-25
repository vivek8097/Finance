using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class new_claim : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    
    }
    protected void addbtn_onclick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("INSERT INTO CLAIM (claim_id, req_id, claim_type, flag, pending_at_dept, pending_at_uid, status, claim_amount, req_comment,claim_date) select case when count(claim_id)=0 then 0 else max(claim_id)+1 end as claim_id, " + Session["userid"].ToString() + ", " + type.SelectedValue.ToString() + ", 0 ,1 , 0, 0 ," + amt.Value + ",'" + comment.Value + "' , sysdatetime()   from claim ;", con);
        com.ExecuteScalar();
        con.Close();
        con.Open();
        SqlCommand com1 = new SqlCommand("select MAX(CLAIM_ID) from [CLAIM] ;", con);
        SqlDataReader rd1 = null;
        rd1 = com1.ExecuteReader();
        rd1.Read();
        int top = Convert.ToInt32(rd1.GetValue(0));
        con.Close();
        if ( type.SelectedValue.ToString() == "1")
        {
            Response.Redirect("attr_new_claim1.aspx?claim_id=" + top);
        }
        if ( type.SelectedValue.ToString() == "2")
        {
            Response.Redirect("attr_new_claim2.aspx?claim_id=" + top);
        }
        

    }
}