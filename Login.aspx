<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html lang="en" >
  <head runat="server">
    <meta charset="UTF-8">
    <title>Login Page</title>
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/lib/magic/magic.css">
     <link rel="stylesheet" type="text/css" href="assets/css/plugins/jquery.jgrowl.css">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-1669764-16', 'onokumus.com');
        ga('send', 'pageview');
    </script>
  </head>
  <body class="login" runat="server">
     <div class="container">
      <div class="text-center">
       <h1 style="color:White;">Finance Monitor</h1>
      </div>
      <div class="tab-content">
        <div id="login" class="tab-pane active">
          <form  class="form-signin" runat="server">
            <p class="text-muted text-center">
              Enter your username and password
            </p>
            <input type="text" placeholder="Username" class="form-control" runat="server" ID="uname">
            <asp:DropDownList ID="usertype" runat="server" 
                class="form-control chzn-select" DataSourceID="FinanceData" 
                DataTextField="type" DataValueField="id">
              </asp:DropDownList>           
            <input type="password" placeholder="Password" class="form-control" runat="server" ID="Password">
            <asp:Button ID="loginbtn" runat="server"  
                class="btn btn-lg btn-primary btn-block" Text="Sign in" 
                onclick="loginbtn_Click" />
            
          </form>
        </div>
        <div id="forgot" class="tab-pane">
          <form  class="form-signin">
            <p class="text-muted text-center">Enter your valid e-mail</p>
            <input type="email" placeholder="mail@domain.com" required="required" class="form-control">
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit">Recover Password</button>
          </form>
        </div>
        <div id="signup" class="tab-pane">
          <form  class="form-signin" >
            <input type="text" placeholder="username" class="form-control">
            <input type="email" placeholder="mail@domain.com" class="form-control">
            <input type="password" placeholder="password" class="form-control">
            <button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
          </form>
        </div>
      </div>
      <div class="text-center">
        <ul class="list-inline">
          <li> 
              
            <asp:SqlDataSource ID="FinanceData" runat="server" 
                ConnectionString="<%$ ConnectionStrings:FinanceConnectionString %>" 
                SelectCommand="SELECT * FROM [user_type_mast]"></asp:SqlDataSource>
            

        </ul>
      </div>
    </div><!-- /container -->
    <script src="assets/lib/jquery.js"></script>
    <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
     <script type="text/javascript" src="assets/lib/jGrowl/jquery.jgrowl.js"></script>
     <script>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
         
         $(document).ready(function () {
             $('.datepicker').datepicker();
         })
    </script>
      
    <script>
        $('.list-inline li > a').click(function () {
            var activeForm = $(this).attr('href') + ' > form';
            //console.log(activeForm);
            $(activeForm).addClass('magictime swap');
            //set timer to 1 seconds, after that, unload the magic animation
            setTimeout(function () {
                $(activeForm).removeClass('magictime swap');
            }, 1000);
        });
    </script>
 
</body>
</html>
