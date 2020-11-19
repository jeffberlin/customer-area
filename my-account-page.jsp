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
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://customers.bmtmicro.com/js/main.js"></script>
    <style media="screen" type="text/css">
      .content-box {
        padding: 1rem;
      }
    </style>
    <script>
      function getCookieValue (name) {
        if (document.cookie.length != 0) {
          var begin = document.cookie.indexOf (name + '=');
          if (begin != -1) {
            begin += name.length + 1;
            var end = document.cookie.indexOf (';', begin);
            if (end == -1) {
              end = document.cookie.length;
            }
            return (unescape (document.cookie.substring (begin, end)));
          }
        }
        return (null);
      }

      function whichCustomer (form) {
        var customer = getCookieValue ("BMTMicro.Customers.AccountID");
        if (customer != null) {
          document.write("<input type='hidden' name='ACCOUNTID' value=" + customer + " />" + customer );
        } else {
          document.write("Please <a href='https://customers.bmtmicro.com/'>login</a> to edit your account!");
          return (false);
        }
      }

      function processCustomer (form) {
        // Important: We need to use hidden fields to submit checkbox values, as the servlets will use default values if the
        // field is not present. (An unchecked checkbox constitutes a non-existent field).
        if ((form.LOGINNAME.value.indexOf (",") != -1) || (form.LOGINNAME.value.indexOf (" ") != -1)) {
          alert("The login name must not contain a space or a comma!");
          form.LOGINNAME.focus ();
          return (false);
        }
        if (!isValidEmail (form.ACCOUNTEMAIL.value)) {
          alert ("You must provide a VALID e-mail address!");
          form.ACCOUNTEMAIL.focus ();
          return (false);
        }
        if (form.PASSWORD.value.length < 4) {
          alert ("The password must be at least 4 characters");
          form.PASSWORD.value = "";
          form.CONFIRMPASS.value = "";
          form.PASSWORD.focus ();
          return (false);
        }
        if (form.PASSWORD.value != form.CONFIRMPASS.value) {
          alert ("Password does not match");
          form.PASSWORD.value = "";
          form.CONFIRMPASS.value = "";
          form.PASSWORD.focus ();
          return (false);
        }
        form.submit ();
        return (true);
      }
    </script>
  </head>
  <body>
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <jsp:include page="/includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Account Login Info</h4>
              <div class="content-box">
                <form name="AccountForm" method="post" action="https://customers.bmtmicro.com/servlets/Customers.Account">
                  <input type="hidden" name="ACTION" value="11" />
                  <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/my-account-edit-success.jsp" />
                  <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/my-account-edit-error.jsp" />
                  <span>
                    <label style="margin-bottom: 1rem;">Account ID:&nbsp;</label>
                    <script>
                      whichCustomer (document.forms[0]);
                    </script>
                  </span>
                  <br>
                  <span>
                    <label>Email:&nbsp;</label>
                    <input name="ACCOUNTEMAIL" value="${requestScope.ACCOUNTEMAIL}" size="35" maxlength="50" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label>Login:&nbsp;</label>
                    <input name="LOGINNAME" value="${requestScope.LOGINNAME}" maxlength="50" size="35" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label>Password:&nbsp;</label>
                    <input type="password" name="PASSWORD" value="${requestScope.PASSWORD}" maxlength="20" size="35" style="margin-bottom: 1rem;" autocomplete="off" />
                  </span>
                  <br>
                  <span>
                    <label>Re-type Password:&nbsp;</label>
                    <input type="password" name="CONFIRMPASS" value="${requestScope.PASSWORD}" maxlength="20" size="35" style="margin-bottom: 2rem;" autocomplete="off" />
                  </span>
                  <br>
                  <button type="button" name="EDITCUSTOMER" onclick="processCustomer (form)" class="save-btn">Submit</button>
                </form>
              </div> <!-- /.content-box -->
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="/includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
