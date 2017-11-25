<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.master" AutoEventWireup="true" CodeFile="new_claim.aspx.cs" Inherits="new_claim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       
                                        <div class="span8">
											
												<fieldset>
													<div class="form-group">
														<label class="control-label" for="select">Claim type</label>
														<div class="controls" >
															&nbsp;<asp:DropDownList ID="type" runat="server" 
                                                                DataSourceID="SqlDataSource1" DataTextField="descr" DataValueField="id">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [claim_type_mase]"></asp:SqlDataSource>
														</div>
													</div>
                                                    
                                                    
                                                    <div class="form-group">
														<label class="control-label" for="input">Claim Amount</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="amt" runat="server">
														</div>
													</div>



                                                    <div class="form-group">
														<label class="control-label" for="input">Comment</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="comment" runat="server">
														</div>
													</div>
													<div class="form-actions">
														<button class="btn btn-alt btn-large btn-primary" type="submit" id="addbtn" runat="server" onserverclick="addbtn_onclick" >
                                                            Proceed</button>
													</div>
												</fieldset>
											
                                            </div>
										
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

