<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    <script>
      function submitForm (form) {
        if (form.PASSWORD.value.length < 4) {
          alert ("The password must be at least 4 characters.");
          form.PASSWORD.focus ();
          return (false);
        }
        if (form.PASSWORD.value.length > 16) {
          alert ("The password must not be more than 16 characters.");
          form.PASSWORD.focus ();
          return (false);
        }
        if (form.PASSWORDAGAIN.value != form.PASSWORD.value) {
          alert ("Your Password does not match the second Password field. Please retype your password and try again.");
          form.PASSWORD.focus ();
          return (false);
        }
        form.submit ();
        return (true);
      }
   </script>
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
              <form name="resetform" action="https://customers.bmtmicro.com/servlets/Customers.ResetPassword" method="post">
                <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/login-reset-password-success.jsp">
                <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/error.jsp">
                <input type="hidden" name="PWRID" value="${requestScope.PWRID}">
                <h4 class="text-center">Reset Password</h4>
                <div class="username">
                  <label>New Password:</label>
                  <input class="customer-input" id="PASSWORD" name="PASSWORD" type="password" value="" maxlength="50" style="margin-bottom: 1rem;" />
                  <span>
                    <label>Re-type Password:</label>
                    <input class="customer-input" id="PASSWORDAGAIN" name="PASSWORDAGAIN" type="password" value="" maxlength="50" />
                  </span>
                </div> <!-- /.username -->
                <input type="button" name="SET" value="Set Password" onclick="submitForm (resetform);">
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
