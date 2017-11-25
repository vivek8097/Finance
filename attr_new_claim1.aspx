<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.master" AutoEventWireup="true" CodeFile="attr_new_claim1.aspx.cs" Inherits="attr_new_claim1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       
                                        <div class="span8">
											
												<fieldset>

                                                    <div class="form-group">
														<label class="control-label" for="input">From</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="frm" runat="server">
														</div>
													</div>
                                                    
                                                    <div class="form-group">
														<label class="control-label" for="input">Destination</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="dest" runat="server">
														</div>
													</div>

                                                    <div class="form-group">
														<label class="control-label" for="input">Amount per Kilometer</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="amtpkm" runat="server">
														</div>
													</div>

                                                    <div class="form-group">
														<label class="control-label" for="input">Halts in a day </label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="haltinaday" runat="server">
														</div>
													</div>

                                                    <div class="form-group">
														<label class="control-label" for="input">Number of Kilometer</label>
														<div class="controls">
															<input  class="input-xlarge" type="text" id="nokilo" runat="server">
														</div>
													</div>

                                                    <div class="form-group">
														<label class="control-label" for="input">Traveling Class</label>
														<div class="controls">
                                                            <asp:DropDownList ID="travelclass" runat="server">
                                                                <asp:ListItem>first Class</asp:ListItem>
                                                                <asp:ListItem>Second class</asp:ListItem>
                                                                <asp:ListItem>Sleeper</asp:ListItem>
                                                                <asp:ListItem>Economy</asp:ListItem>
                                                            </asp:DropDownList>
                                                            
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

