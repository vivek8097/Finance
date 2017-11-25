<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.master" AutoEventWireup="true" CodeFile="attr_new_claim2.aspx.cs" Inherits="attr_new_claim2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       
                                        <div class="span8">
											
												<fieldset>

                                                    <div class="form-group">
														<label class="control-label" for="input">Hospital Name</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="hospital" runat="server">
														</div>
													</div>
                                                    
                                                    <div class="form-group">
														<label class="control-label" for="input">No of Days Admitted</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="nodays" runat="server">
														</div>
													</div>

                                                    <div class="form-group">
														<label class="control-label" for="input">Disease</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="disease" runat="server">
														</div>
													</div>



													<div class="form-actions">
														<button class="btn btn-alt btn-large btn-primary" type="submit" id="addbtn" runat="server" onserverclick="addbtn_onclick" >Save changes</button>
													</div>
												</fieldset>
											
                                            </div>
										
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

