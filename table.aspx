﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.master" AutoEventWireup="true" CodeFile="table.aspx.cs" Inherits="table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <div id="content">
        <div class="outer">
          <div class="inner">

            <!--Begin Datatables-->
            <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Dynamic Table</h5>
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
                        <tr>
                          <td>Trident</td>
                          <td>Internet Explorer 4.0</td>
                          <td>Win 95+<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                  DataKeyNames="uid,claim_id,dept_id" DataSourceID="SqlDataSource1">
                              <Columns>
                                  <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                  <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                                      SortExpression="uid" />
                                  <asp:BoundField DataField="claim_id" HeaderText="claim_id" ReadOnly="True" 
                                      SortExpression="claim_id" />
                                  <asp:BoundField DataField="username" HeaderText="username" 
                                      SortExpression="username" />
                                  <asp:BoundField DataField="descr" HeaderText="descr" SortExpression="descr" />
                                  <asp:BoundField DataField="flag" HeaderText="flag" SortExpression="flag" />
                                  <asp:BoundField DataField="dept_id" HeaderText="dept_id" ReadOnly="True" 
                                      SortExpression="dept_id" />
                                  <asp:BoundField DataField="status" HeaderText="status" 
                                      SortExpression="status" />
                                  <asp:BoundField DataField="claim_amount" HeaderText="claim_amount" 
                                      SortExpression="claim_amount" />
                                  <asp:BoundField DataField="req_comment" HeaderText="req_comment" 
                                      SortExpression="req_comment" />
                              </Columns>
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                                  SelectCommand="SELECT claim_type_mase.id, users.uid, claim.claim_id, users.username, claim_type_mase.descr, claim.flag, department_mast.dept_id, claim.status, claim.claim_amount, claim.req_comment FROM claim INNER JOIN claim_type_mase ON claim.claim_type = claim_type_mase.id INNER JOIN users ON claim.req_id = users.uid AND claim.pending_at_uid = users.uid INNER JOIN department_mast ON claim.pending_at_dept = department_mast.dept_id">
                              </asp:SqlDataSource>
                            </td>
                          <td>4</td>
                          <td>X</td>
                        </tr>
                        <tr>
                          <td>Trident</td>
                          <td>Internet Explorer 5.0</td>
                          <td>Win 95+</td>
                          <td>5</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Trident</td>
                          <td>Internet Explorer 5.5</td>
                          <td>Win 95+</td>
                          <td>5.5</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Trident</td>
                          <td>Internet Explorer 6</td>
                          <td>Win 98+</td>
                          <td>6</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Trident</td>
                          <td>Internet Explorer 7</td>
                          <td>Win XP SP2+</td>
                          <td>7</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Trident</td>
                          <td>AOL browser (AOL desktop)</td>
                          <td>Win XP</td>
                          <td>6</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Firefox 1.0</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.7</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Firefox 1.5</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Firefox 2.0</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Firefox 3.0</td>
                          <td>Win 2k+ / OSX.3+</td>
                          <td>1.9</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Camino 1.0</td>
                          <td>OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Camino 1.5</td>
                          <td>OSX.3+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Netscape 7.2</td>
                          <td>Win 95+ / Mac OS 8.6-9.2</td>
                          <td>1.7</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Netscape Browser 8</td>
                          <td>Win 98SE+</td>
                          <td>1.7</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Netscape Navigator 9</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.0</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.1</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.1</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.2</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.2</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.3</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.3</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.4</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.4</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.5</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.5</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.6</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1.6</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.7</td>
                          <td>Win 98+ / OSX.1+</td>
                          <td>1.7</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Mozilla 1.8</td>
                          <td>Win 98+ / OSX.1+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Seamonkey 1.1</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Gecko</td>
                          <td>Epiphany 2.20</td>
                          <td>Gnome</td>
                          <td>1.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>Safari 1.2</td>
                          <td>OSX.3</td>
                          <td>125.5</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>Safari 1.3</td>
                          <td>OSX.3</td>
                          <td>312.8</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>Safari 2.0</td>
                          <td>OSX.4+</td>
                          <td>419.3</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>Safari 3.0</td>
                          <td>OSX.4+</td>
                          <td>522.1</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>OmniWeb 5.5</td>
                          <td>OSX.4+</td>
                          <td>420</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>iPod Touch / iPhone</td>
                          <td>iPod</td>
                          <td>420.1</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Webkit</td>
                          <td>S60</td>
                          <td>S60</td>
                          <td>413</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 7.0</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 7.5</td>
                          <td>Win 95+ / OSX.2+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 8.0</td>
                          <td>Win 95+ / OSX.2+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 8.5</td>
                          <td>Win 95+ / OSX.2+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 9.0</td>
                          <td>Win 95+ / OSX.3+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 9.2</td>
                          <td>Win 88+ / OSX.3+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera 9.5</td>
                          <td>Win 88+ / OSX.3+</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Opera for Wii</td>
                          <td>Wii</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Nokia N800</td>
                          <td>N800</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Presto</td>
                          <td>Nintendo DS browser</td>
                          <td>Nintendo DS</td>
                          <td>8.5</td>
                          <td>C/A1</td>
                        </tr>
                        <tr>
                          <td>KHTML</td>
                          <td>Konqureror 3.1</td>
                          <td>KDE 3.1</td>
                          <td>3.1</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>KHTML</td>
                          <td>Konqureror 3.3</td>
                          <td>KDE 3.3</td>
                          <td>3.3</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>KHTML</td>
                          <td>Konqureror 3.5</td>
                          <td>KDE 3.5</td>
                          <td>3.5</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Tasman</td>
                          <td>Internet Explorer 4.5</td>
                          <td>Mac OS 8-9</td>
                          <td>-</td>
                          <td>X</td>
                        </tr>
                        <tr>
                          <td>Tasman</td>
                          <td>Internet Explorer 5.1</td>
                          <td>Mac OS 7.6-9</td>
                          <td>1</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Tasman</td>
                          <td>Internet Explorer 5.2</td>
                          <td>Mac OS 8-X</td>
                          <td>1</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>NetFront 3.1</td>
                          <td>Embedded devices</td>
                          <td>-</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>NetFront 3.4</td>
                          <td>Embedded devices</td>
                          <td>-</td>
                          <td>A</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>Dillo 0.8</td>
                          <td>Embedded devices</td>
                          <td>-</td>
                          <td>X</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>Links</td>
                          <td>Text only</td>
                          <td>-</td>
                          <td>X</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>Lynx</td>
                          <td>Text only</td>
                          <td>-</td>
                          <td>X</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>IE Mobile</td>
                          <td>Windows Mobile 6</td>
                          <td>-</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Misc</td>
                          <td>PSP browser</td>
                          <td>PSP</td>
                          <td>-</td>
                          <td>C</td>
                        </tr>
                        <tr>
                          <td>Other browsers</td>
                          <td>All others</td>
                          <td>-</td>
                          <td>-</td>
                          <td>U</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->

          </div>

          <!-- end .inner -->
        </div>

        <!-- end .outer -->
      </div>

    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

