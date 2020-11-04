<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sorry, Access Denied</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/style.css"/>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/login.css"/>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/responsive.css"/>
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
              <h4 class="text-center">Your login and password are invalid.</h4>
              <p>Your password has been successfully set to the new password provided.</p>
              <p>You may want to <a href="https://customers-new.bmtmicro.com/">try again</a>.</p>
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
