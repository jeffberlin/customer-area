<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/style.css"/>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/login.css"/>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/responsive.css"/>
    <style media="screen" type="text/css">
      label {
        text-align: left;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <div class="main"></div>
      <div class="content-area">
        <div class="row text-center justify-content-center" style="margin-bottom: 20px;">
          <div class="col-lg-10">
            <img src='<c:url value="https://customers-new.bmtmicro.com/images/bmt-micro-logo-new-min.png"></c:url>' alt="BMT Micro, Inc. logo" height="70" style="margin-bottom: 20px;">
            <h5 style="color: #ffffff; letter-spacing: .5px; text-shadow: 1px 1px 3px rgba(0,0,0,0.7);">Customer's Control Panel</h5>
          </div> <!-- /.col-lg-10 -->
        </div> <!-- /.row text-center justify-content-center -->
        <div class="row justify-content-center">
          <div class="box-style">
            <div class="customer-login-box" style="background-color: rgba(255, 255, 255, 0.3);">
              <form action="https://customers-new.bmtmicro.com/servlets/Customers.ResetPassword" method="post">
                <input type="hidden" name="NEXT_PAGE" value="https://customers-new.bmtmicro.com/login-reset-link-sent.jsp">
                <input type="hidden" name="RESET_PAGE" value="https://customers-new.bmtmicro.com/login-reset-password.jsp">
                <input type="hidden" name="ERROR_PAGE" value="https://customers-new.bmtmicro.com/login-lost-password-error.jsp">
                <h4 class="text-center">Reset&nbsp;Password</h4>
                <div class="username">
                  <label>Customer ID, Login Name, or Email:</label>
                  <input class="customer-input" id="LOGINNAME" name="LOGINNAME" type="text" value="" maxlength="50" style="margin-bottom: 1rem;" />
                </div> <!-- /.username -->
                <div class="login-btn text-center" style="margin-bottom: 10px;">
                  <button type="submit" name="SET" value="Reset Password">Reset Password</button>
                </div> <!-- /.login-btn text-center -->
              </form>
            </div> <!-- /.customer-login-box -->
          </div> <!-- /.box-style -->
        </div> <!-- /.row justify-content-center -->
      </div> <!-- /.content-area -->
      <footer class="footer container-fluid">
        <div class="bottom-footer-content row text-center align-items-center">
          <div class="copyright col">
            <p>BMT Micro, Inc. Copyright &copy 1992 - ${yearNow}</p>
          </div> <!-- /.copyright col -->
        </div> <!-- /.bottom-footer-content row text-center align-items-center -->
      </footer>
    </div> <!-- /.container-fluid -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
