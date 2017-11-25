<%@ Page Title="" Language="C#" MasterPageFile="~/HRFinance.master" AutoEventWireup="true" CodeFile="view_user_detail.aspx.cs" Inherits="view_user_detail" %>

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
                    <h5>User Detail</h5>
                  </header>
                  <div id="collapse4" class="body">
                   
                      <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                          DataKeyNames="uid" DataSourceID="SqlDataSource1"  
                          CssClass="table table-bordered table-condensed table-hover table-striped" 
                          HorizontalAlign="Center">
                          <Fields>
                           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                              <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                                  SortExpression="uid" />
                              <asp:BoundField DataField="username" HeaderText="username" 
                                  SortExpression="username" />
                              <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                              <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                              <asp:BoundField DataField="designation" HeaderText="designation" 
                                  SortExpression="designation" />
                              <asp:BoundField DataField="password" HeaderText="password" 
                                  SortExpression="password" />
                              <asp:BoundField DataField="department" HeaderText="department" 
                                  SortExpression="department" />
                              <asp:BoundField DataField="active" HeaderText="active" 
                                  SortExpression="active" />
                             
                          </Fields>
                      </asp:DetailsView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                          DeleteCommand="DELETE FROM [users] WHERE [uid] = @uid" 
                          InsertCommand="INSERT INTO [users] ([uid], [username], [fname], [lname], [designation], [password], [department], [location], [active]) VALUES (@uid, @username, @fname, @lname, @designation, @password, @department, @location, @active)" 
                          SelectCommand="SELECT * FROM [users] WHERE ([uid] = @uid)" 
                          
                          UpdateCommand="UPDATE [users] SET [username] = @username, [fname] = @fname, [lname] = @lname, [designation] = @designation, [password] = @password, [department] = @department, [location] = @location, [active] = @active WHERE [uid] = @uid">
                          <DeleteParameters>
                              <asp:Parameter Name="uid" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="uid" Type="Int32" />
                              <asp:Parameter Name="username" Type="String" />
                              <asp:Parameter Name="fname" Type="String" />
                              <asp:Parameter Name="lname" Type="String" />
                              <asp:Parameter Name="designation" Type="String" />
                              <asp:Parameter Name="password" Type="String" />
                              <asp:Parameter Name="department" Type="String" />
                              <asp:Parameter Name="location" Type="String" />
                              <asp:Parameter Name="active" Type="String" />
                          </InsertParameters>
                          <SelectParameters>
                              <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
                          </SelectParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="username" Type="String" />
                              <asp:Parameter Name="fname" Type="String" />
                              <asp:Parameter Name="lname" Type="String" />
                              <asp:Parameter Name="designation" Type="String" />
                              <asp:Parameter Name="password" Type="String" />
                              <asp:Parameter Name="department" Type="String" />
                              <asp:Parameter Name="location" Type="String" />
                              <asp:Parameter Name="active" Type="String" />
                              <asp:Parameter Name="uid" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                   
                      <br />
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                          SelectCommand="SELECT users.username, user_type_mast.type FROM users INNER JOIN profile ON users.uid = profile.uid INNER JOIN user_type_mast ON profile.profile = user_type_mast.id where users.uid=@param">
                          <SelectParameters>
                              <asp:QueryStringParameter Name="param" QueryStringField="uid" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="table table-bordered table-condensed table-hover table-striped"
                          DataSourceID="SqlDataSource2">
                          <Columns>
                              <asp:BoundField DataField="username" HeaderText="Assigned Profiles" 
                                  SortExpression="username" />
                          </Columns>
                      </asp:GridView>
                   
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" Runat="Server">
</asp:Content>

