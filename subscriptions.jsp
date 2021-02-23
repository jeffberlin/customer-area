<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1600, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%@ include file="/includes/favicon-meta.html" %>
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://customers.bmtmicro.com/js/TableSort.js"></script>
    <script src="https://customers.bmtmicro.com/js/main.js"></script>
    <script>
      function cancelSubscription (subscriptionID, allowCancel) {
        var form = document.subscriptions;
        form.ACTION.value = "1";
        form.SUBSCRIPTIONID.value = subscriptionID;
        form.NEXT_PAGE.value = allowCancel ? "https://customers.bmtmicro.com/subscriptions-cancel-success.jsp" : "https://customers.bmtmicro.com/subscriptions-cancelrequest-success.jsp";
        form.submit ();
      }
      function updatePayment (subscriptionID) {
        var form = document.subscriptions;
        form.ACTION.value = "2";
        form.SUBSCRIPTIONID.value = subscriptionID;
        form.NEXT_PAGE.value = "https://customers.bmtmicro.com/subscriptions-update-payment.jsp";
        form.submit ();
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
              <h4>Subscription Purchases</h4>
              <div class="content-box overflow-auto d-flex flex-column">
                <div name="tableframe" id="tableframe" class="overflow-auto h-100">
                  <c:catch var="errormsg">
                    <c:import url="https://customers.bmtmicro.com/servlets/Customers.Subscriptions">
                      <c:param name="SESSIONID" value="${sessionid}" />
                      <c:param name="NEXT_PAGE" value="https://customers.bmtmicro.com/subscriptions-table.jsp"/>
                      <c:param name="ERROR_PAGE" value="https://customers.bmtmicro.com/error-page.jsp"/>
                    </c:import>
                  </c:catch>
                  <%@ include file="/includes/catch.jsp" %>
                </div> <!-- /#tableframe -->
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
