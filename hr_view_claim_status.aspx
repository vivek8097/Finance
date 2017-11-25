<%@ Page Title="" Language="C#" MasterPageFile="~/HRFinance.master" AutoEventWireup="true" CodeFile="hr_view_claim_status.aspx.cs" Inherits="hr_view_claim_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


  <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Claim Status</h5>
                  </header>
                  <div id="collapse4" class="body">
                  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            DataKeyNames="claim_id" DataSourceID="SqlDataSource1" Height="50px" 
                            Width="525px" 
                          CssClass="table table-bordered table-condensed table-hover table-striped">
                            <Fields>
                                <asp:BoundField DataField="claim_id" HeaderText="claim Id" ReadOnly="True" 
                                    SortExpression="claim_id" />
                                <asp:BoundField DataField="username" HeaderText="Requester Name" 
                                    SortExpression="username" />
                                <asp:BoundField DataField="designation" HeaderText="designation" 
                                    SortExpression="designation" />
                                <asp:BoundField DataField="descr" HeaderText="Type of Claim" 
                                    SortExpression="descr" />
                                <asp:BoundField DataField="flag" HeaderText="Flag" ReadOnly="True" 
                                    SortExpression="flag" />
                                <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" 
                                    SortExpression="status" />
                                <asp:BoundField DataField="claim_amount" HeaderText="claim amount" 
                                    SortExpression="claim_amount" />
                                <asp:BoundField DataField="req_comment" HeaderText="Requester Comment" 
                                    SortExpression="req_comment" />
                                <asp:BoundField DataField="pending_at" HeaderText="Pending At" 
                                    SortExpression="pending_at" />
                                <asp:BoundField DataField="dept_name" HeaderText="Pending At Department" 
                                    SortExpression="dept_name" />
                                <asp:BoundField DataField="amt_appr" HeaderText="Amount Approved" 
                                    SortExpression="amt_appr" />
                            </Fields>
                            <RowStyle Height="40px" />
                        </asp:DetailsView>
                  <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                            DataKeyNames="claim_id" DataSourceID="SqlDataSource1" Height="50px" 
                            Width="525px" 
                          CssClass="table table-bordered table-condensed table-hover table-striped">
                            <Fields>
                                <asp:BoundField DataField="from_src" HeaderText="Source" 
                                    SortExpression="from_src" />
                                <asp:BoundField DataField="to_dest" HeaderText="Destination" 
                                    SortExpression="to_dest" />
                                <asp:BoundField DataField="amt_per_kim" HeaderText="Amount per Kilometer" 
                                    SortExpression="amt_per_kim" />
                                <asp:BoundField DataField="no_of_kilo" HeaderText="Number of kilometer" 
                                    SortExpression="no_of_kilo" />
                                <asp:BoundField DataField="halts_in_day" HeaderText="Halts In a Day" 
                                    SortExpression="halts_in_day" />
                            </Fields>
                            <RowStyle Height="40px" />
                        </asp:DetailsView>
                  <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                            DataKeyNames="claim_id" DataSourceID="SqlDataSource1" Height="50px" 
                            Width="525px" 
                          CssClass="table table-bordered table-condensed table-hover table-striped">
                            <Fields>
                                <asp:BoundField DataField="hospital_name" HeaderText="Hospital Name" 
                                    SortExpression="hospital_name" />
                                <asp:BoundField DataField="no_of_days_admitted" HeaderText="Number of Days Admitted" 
                                    SortExpression="no_of_days_admitted" />
                                <asp:BoundField DataField="disease" HeaderText="Disease" 
                                    SortExpression="disease" />
                            </Fields>
                            <RowStyle Height="40px" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                            
                          
                          SelectCommand="SELECT claim.claim_id, users.username, users.designation, claim_type_mase.descr, CASE WHEN claim.flag = 1 THEN 'Emergency' ELSE 'Normal' END AS flag, CASE WHEN claim.status = 0 THEN 'Pending' WHEN claim.status = 1 THEN 'Approved' ELSE 'Rejected' END AS status, claim.claim_amount, claim.req_comment, c.username AS pending_at, department_mast.dept_name, claim.amt_appr, claim.from_src, claim.to_dest, claim.amt_per_kim, claim.hospital_name, claim.no_of_days_admitted, claim.disease, claim.traveling_class, claim.no_of_kilo, claim.halts_in_day , claim.transaction_no FROM claim LEFT OUTER JOIN claim_type_mase ON claim.claim_type = claim_type_mase.id LEFT OUTER JOIN users ON claim.req_id = users.uid LEFT OUTER JOIN (SELECT uid, username, fname, lname, designation, password, department, location, active FROM users AS users_1) AS c ON claim.pending_at_uid = c.uid LEFT OUTER JOIN department_mast ON claim.pending_at_dept = department_mast.dept_id WHERE (claim.claim_id = @param)">
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="param" 
                                    QueryStringField="claim_id" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                  </div>
                </div>
              </div>
            </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

