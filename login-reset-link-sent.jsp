<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/style.css"/>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/login.css"/>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/responsive.css"/>
    <style media="screen" type="text/css">
      button a, button a:hover {
        color: #ffffff;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
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
              <h4 class="text-center">Reset Password Request Successful</h4>
              <p>A password reset link has been emailed to the email address we have on file.</p>
              <p>If you do not receive the email or if your email address has changed, please contact <a href="mailto:webassist@bmtmicro.com">webassist@bmtmicro.com</a> for assistance.</p>
              <div class="login-btn text-center" style="margin-bottom: 10px;">
                <form action="https://customers.bmtmicro.com">
                  <button type="submit">Back to Login</button>
                </form>
              </div> <!-- /.login-btn text-center -->
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
