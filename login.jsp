<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=600, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%@ include file="/includes/favicon-meta.html" %>
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/style.css"/>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/login.css"/>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/responsive.css"/>
    <style media="screen" type="text/css">
      label {
        text-align: left;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid" style="height: calc(100vh - 350px);">
      <div class="main"></div>
      <div class="content-area">
        <div class="row text-center justify-content-center" style="margin-bottom: 20px;">
          <div class="col-lg-10">
            <img src='<c:url value="https://customers.bmtmicro.com/images/bmt-micro-logo-new-min.png"></c:url>' alt="BMT Micro, Inc. logo" height="70" style="margin-bottom: 20px;">
            <h5 style="color: #ffffff; letter-spacing: .5px; text-shadow: 1px 1px 3px rgba(0,0,0,0.7);">Customer's Control Panel</h5>
          </div> <!-- /.col-lg-10 -->
        </div> <!-- /.row text-center justify-content-center -->
        <div class="row justify-content-center">
          <div class="box-style">
            <div class="customer-login-box" style="background-color: rgba(255, 255, 255, 0.3);">
              <form action="https://customers.bmtmicro.com/servlets/Customers.Login" method="post">
                <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/main.jsp">
                <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/login-error.jsp">
                <h4 class="text-center">Customer Log In</h4>
                <div class="username">
                  <label>Login:</label>
                  <input class="customer-input" id="LOGINNAME" name="LOGINNAME" value="" maxlength="50" autocomplete="off" />
                </div> <!-- /.username -->
                <div class="password">
                  <label>Password:</label>
                  <input class="customer-input" id="PASSWORD" name="PASSWORD" type="password" value="" maxlength="50" autocomplete="off" />
                </div> <!-- /.password -->
                <div class="forgot-password">
                  <a href="https://customers.bmtmicro.com/login-lost-password.jsp">Forgot Password?</a>
                </div> <!-- /.forgot-password -->
                <div class="login-btn text-center" style="margin-bottom: 10px;">
                  <button type="submit" value="Login" autocomplete="off">Login</button>
                </div> <!-- /.login-btn text-center -->
              </form>
            </div> <!-- /.customer-login-box -->
          </div> <!-- /.box-style -->
        </div> <!-- /.row justify-content-center -->
      </div> <!-- /.content-area -->
      <footer class="footer container-fluid">
        <div class="bottom-footer-content row text-center align-items-center">
          <div class="copyright col">
            <p>BMT Micro, Inc. Copyright &copy; 1992 - ${yearNow}</p>
          </div> <!-- /.copyright col -->
        </div> <!-- /.bottom-footer-content row text-center align-items-center -->
      </footer>
    </div> <!-- /.container-fluid -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
