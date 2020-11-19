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
  </head>
  <body onload="document.editloginstart.submit()">
    <form name="editloginstart" method="post" action="https://customers-new.bmtmicro.com/servlets/Customers.Account">
    <input type="hidden" name="ACTION" value="1" />
    <input type="hidden" name="PAGE" value="https://customers-new.bmtmicro.com/my-account.jsp" />
    <input type="hidden" name="NEXT_PAGE" value="https://customers-new.bmtmicro.com/my-account-page.jsp" />
    <input type="hidden" name="ERROR_PAGE" value="https://customers-new.bmtmicro.com/my-account-edit-error.jsp" />
    </form>
  </body>
</html>
