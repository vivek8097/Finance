using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class transact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FinanceConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addbtn_onclick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com3 = new SqlCommand("select count(acct_no)  from bank where acct_no in ( '" + orgacct.Value  + "' , '" + tracct.Value + "')", con);
        SqlDataReader rd =  com3.ExecuteReader();
        rd.Read();
        if (rd.GetValue (0).ToString()  == "2")
        {
            con.Close();

            con.Open();
            SqlCommand com4 = new SqlCommand("select count(acct_no)  from bank where amt >" + amt.Value + " and acct_no ='" + orgacct.Value + "'", con);
            SqlDataReader rd1 = com4.ExecuteReader();
            rd1.Read();
            if (rd1.GetValue(0).ToString() == "1")
            {
                con.Close();

                con.Open();
                SqlCommand com = new SqlCommand("INSERT INTO [transaction] ( transaction_id, transaction_amt, sender_acct_no, receiver_acct_no,status) select case when count(transaction_id)=0 then 0 else max(transaction_id)+1 end as transaction_id, '" + amt.Value + "' , '" + orgacct.Value + "' , '" + tracct.Value + "' , '0'  from [transaction] ;", con);
                com.ExecuteScalar();
                con.Close();



                con.Open();
                SqlCommand com1 = new SqlCommand("update bank set amt= amt -  " + amt.Value + " where acct_no = '" + orgacct.Value + "';", con);
                com1.ExecuteScalar();
                con.Close();

                con.Open();
                SqlCommand com2 = new SqlCommand("update bank set amt= amt +  " + amt.Value + " where acct_no = '" + tracct.Value + "';", con);
                com2.ExecuteScalar();
                con.Close();

                con.Open();
                SqlCommand com6 = new SqlCommand("select max(transaction_id)  from [transaction];", con);
                SqlDataReader rd3 = com6.ExecuteReader();
                rd3.Read();
                string  transaction_id = rd3.GetValue(0).ToString();
                con.Close();

                con.Open();
                SqlCommand com5 = new SqlCommand(@"update claim  set claim.transaction_no =" + transaction_id + " where claim.claim_id='" + Request.QueryString["claim_id"].ToString() + "';", con);
                com5.ExecuteScalar();
                con.Close();

                Response.Redirect("fin_approve.aspx?alert=Record Successfully approved");

            }
            else
            {
                con.Close();
                Response.Redirect("transact.aspx?alert=Account insufficeient balance&claim_id="+Request.QueryString["claim_id"]);
            }
        }
        else
        {
            con.Close();
            Response.Redirect("transact.aspx?alert=please check if both the account number are valid&claim_id=" + Request.QueryString["claim_id"]);

        }

    }
}