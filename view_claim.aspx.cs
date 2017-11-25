using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class view_claim : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["emergency"] !=null)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(@"update claim set flag =1 where claim_id='" + Request.QueryString["claim_id"].ToString()+"';", con);
            com1.ExecuteScalar();
            Response.Redirect("view_claim.aspx?alert=Claim Flagged for Emergency");
            con.Close();

        }
        if (Session["userid"] != null)
        {
            con.Open();
            SqlCommand com = new SqlCommand(@"SELECT        claim.claim_id, users.username, claim_type_mase.descr, CASE WHEN claim.flag = 1 THEN 'Emergency' ELSE 'Normal' END AS flag, 
                         CASE WHEN claim.status = 0 THEN 'Pending' WHEN claim.status = 1 THEN 'Approved' ELSE 'Rejected' END AS status, claim.claim_amount, claim.req_comment, 
                         c.username AS pending_at, department_mast.dept_name , claim.amt_appr, claim.from_src, claim.to_dest,  claim.amt_per_kim 
FROM            claim LEFT OUTER JOIN
                         claim_type_mase ON claim.claim_type = claim_type_mase.id LEFT OUTER JOIN
                         users ON claim.req_id = users.uid LEFT OUTER JOIN
                             (SELECT        uid, username, fname, lname, designation, password, department, location, active
                               FROM            users AS users_1) AS c ON claim.pending_at_uid = c.uid LEFT OUTER JOIN
                         department_mast ON claim.pending_at_dept = department_mast.dept_id where req_id='" + Session["userid"].ToString() + "';", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();
          
            while (rd.Read())
            {
                string action = "";
                if (rd.GetValue(3).ToString() == "Normal")
                {
                    action += "<a href=\"view_claim.aspx?emergency=1&claim_id=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-upload\"></i></span></a>";
                    //action += "Normaal";
                }
                action += "<a href=\"view_claim_status.aspx?claim_id=" + rd.GetValue(0) + "\"><i class=\"glyphicon glyphicon-search\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd.GetValue(0) + "</td><td>" + rd.GetValue(1) + "</td><td>" + rd.GetValue(2) + "</td>  <th>" + rd.GetValue(3) + "</td><td>" + rd.GetValue(8) + "</td><td>" + rd.GetValue(7) + "</td> <td>" + rd.GetValue(4) + "</td> <td>" + rd.GetValue(5) + "</td><td>" + rd.GetValue(6) + "</td ><td>"+rd.GetValue(9)+"</td><td class=\"toolbar\">" + action + "</td></tr>";
            }
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }
    }
}