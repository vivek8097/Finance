<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.master" AutoEventWireup="true" CodeFile="view_claim.aspx.cs" Inherits="view_claim" %>

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
                          <th>Amount Approved</th>
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

