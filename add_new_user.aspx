<%@ Page Title="" Language="C#" MasterPageFile="~/HRFinance.master" AutoEventWireup="true" CodeFile="add_new_user.aspx.cs" Inherits="add_new_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Example vertical forms -->
										<div class="span8">
									
												<fieldset>
													<div class="control-group">
														<label class="control-label" for="input">User name</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="usernametxt" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">Password</label>
														<div class="controls">
															<input type="password" class="input-xlarge"   id="passwordtxt" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">First Name</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="fname" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">Last name</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="lname" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">Account Number</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="acct" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">Department</label>
														<div class="controls">
                                                        <div class="controls" >
															&nbsp;<asp:DropDownList ID="depart" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [department_master]"></asp:SqlDataSource>
														</div>
															 
														</div>
													</div>
                                                    </br>
                                                    <div class="control-group">
														<label class="control-label" for="input">Designation </label>
														<div class="controls">
                                                        <div class="controls" >
															&nbsp;<asp:DropDownList ID="design" runat="server" DataSourceID="SqlDataSource2" DataTextField="designation" DataValueField="designation">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [designation_master]"></asp:SqlDataSource>
														</div>
															 
														</div>
													</div>
                                                    </br>
                                                    <div class="control-group">
														
														<div class="controls">
                                                            <asp:CheckBox ID="activate" class="input-xlarge" runat="server"  />Select if user is active 
														</div>
													</div>
                                                      </br>
													<div class="form-actions">
														<button class="btn btn-alt btn-large btn-primary" type="submit" id="addbtn" runat="server" onserverclick="addbtn_onclick">Creat New User </button>
													</div>
												</fieldset>
											</form>
										</div>
									
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

