<%@ Page Title="" Language="C#" MasterPageFile="~/HRFinance.master" AutoEventWireup="true" CodeFile="profile_user.aspx.cs" Inherits="profile_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="span8">
									
												<fieldset>
													
                                                    <div class="control-group">
														<label class="control-label" for="input">Select Username</label>
														<div class="controls">
                                                        <div class="controls" >
															&nbsp;<asp:DropDownList ID="userid" runat="server" 
                                                                DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="uid">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
														</div>
															 
														</div>
													</div>
                                                    </br>
                                                    <div class="control-group">
														<label class="control-label" for="input">Select Profile </label>
														<div class="controls">
                                                        <div class="controls" >
															&nbsp;<asp:DropDownList ID="profile" 
                                                                runat="server" DataSourceID="SqlDataSource2" DataTextField="type" 
                                                                DataValueField="id">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [user_type_mast]"></asp:SqlDataSource>
														</div>
															 
														</div>
													</div>
                                                    </br>
                                                    
                                                      </br>
													<div class="form-actions">
														<button class="btn btn-alt btn-large btn-primary" type="submit" id="addbtn" runat="server" onserverclick="addbtn_onclick">Creat New User </button>
													</div>
												</fieldset>
											</form>
										</div>


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
                          <th>Username </th>
                          <th>Profile assigned</th>
                          
                          
                          <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

