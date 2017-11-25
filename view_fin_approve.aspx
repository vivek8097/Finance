<%@ Page Title="" Language="C#" MasterPageFile="~/FinFinance.master" AutoEventWireup="true" CodeFile="view_fin_approve.aspx.cs" Inherits="view_fin_approve" %>

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
                    <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                      <thead>
                      <tr>
                          <th>Claim id</th>
                          <th>requester id</th>
                          <th>claim_type</th>
                          <th>flag</th>
                          <th>pending_at_dept</th>
                          <th>pending_at_uid</th>
                          <th>status</th>
                          <th>claim_amount</th>
                          <th>req_comment</th>
                          <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                      </tbody>
                    </table>
                    <div class="span8">
											
												<fieldset>

                                                    <div class="form-group">
														<label class="control-label" for="input">Select Status</label>
														<div class="controls">
															<asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem Value="1">approved</asp:ListItem>
                  <asp:ListItem Value="2">rejected</asp:ListItem>
              </asp:DropDownList>
														</div>
													</div>


                                                     <div class="form-group">
														<label class="control-label" for="input">Amount to be approved</label>
														<div class="controls">
															<asp:TextBox ID="amt" runat="server"></asp:TextBox>
														</div>
													</div>
                                                     

													<div class="form-actions">
														<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
													</div>
												</fieldset>
											
                                            </div>
                  </div>
                </div>
              </div>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                  SelectCommand="SELECT users.uid, users.username FROM profile INNER JOIN users ON profile.uid = users.uid WHERE (profile.profile = 3)">
              </asp:SqlDataSource>
               
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

