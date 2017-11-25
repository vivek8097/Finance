<%@ Page Title="" Language="C#" MasterPageFile="~/HRFinance.master" AutoEventWireup="true" CodeFile="transact.aspx.cs" Inherits="transact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<!-- Example vertical forms -->
										<div class="span8">
									
												<fieldset>
													<div class="control-group">
														<label class="control-label" for="input">Organisation Account Number</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="orgacct" runat="server">
														</div>
													</div>

                                                    <div class="control-group">
														<label class="control-label" for="input">User name</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="usernametxt" runat="server">
														</div>
													</div>
                                                   
                                                    <div class="control-group">
														<label class="control-label" for="input">Account Number To tranfer</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="tracct" runat="server">
														</div>
													</div>
                                                    <div class="control-group">
														<label class="control-label" for="input">Amount to be Transfered</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="amt" runat="server">
														</div>
													</div>
                                                   </br>
													<div class="form-actions">
														<button class="btn btn-alt btn-large btn-primary" type="submit" id="addbtn" runat="server" onserverclick="addbtn_onclick">Transact </button>
													</div>
												</fieldset>
										
										</div>
									
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

