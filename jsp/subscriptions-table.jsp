<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
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
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src='https://customers-new.bmtmicro.com/js/TableSort.js'></script>
    <script>
      function cancelSubscription (subscriptionID, allowCancel) {
        var form = document.requestcancel;
        form.SUBSCRIPTIONID.value = subscriptionID;
        form.NEXT_PAGE.value = allowCancel ? "https://customers-new.bmtmicro.com/cancelsuccess.html" : "https://customers-new.bmtmicro.com/requestsuccess.html";
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
            <jsp:include page="includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Subscription Purchases</h4>
              <form name="requestcancel" action="https://customers-new.bmtmicro.com/servlets/Customers.Subscriptions" method="post" onSubmit="cancelSubscription();">
                <input type="hidden" name="ACTION" value="1"/>
                <input type="hidden" name="SUBSCRIPTIONID" value=""/>
                <input type="hidden" name="NEXT_PAGE" value="https://customers-new.bmtmicro.com/cancel-success.jsp"/>
                <input type="hidden" name="ERROR_PAGE" value="https://customers-new.bmtmicro.com/error.jsp"/>
              </form>
              <div class="content-box overflow-auto">
                <div class="table-header">
                  <span>&nbsp;</span>
                </div><!-- /.table-header -->
                <div class="row table-responsive" style="margin-left: auto; margin-right: auto;">
                  <table class="table" id="selection">
                    <thead>
                      <tr class="table-category">
                        <th scope="col" class="sort-column text-center sortable-text sort" title="Sort on 'Product Name'">
                          <a href="#" class="fdTableSortTrigger">Product Name</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-numeric sort" title="Sort on 'Price'">
                          <a href="#">Price</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-date-ymd sort" title="Sort on 'Date'">
                          <a href="#">Effective Date</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-date-ymd sort" title="Sort on 'Date'">
                          <a href="#">Expiration Date</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-date-ymd sort" title="Sort on 'Date'">
                          <a href="#">Billing Date</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-text sort" title="Sort on 'Status'">
                          <a href="#">Status</a>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        ${requestScope.TABLEDATA}
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr class="table-total">
                        <th colspan="6"></th>
                      </tr>
                    </tfoot>
                  </table>
                </div> <!-- /.row table-responsive -->
              </div> <!-- /.content-box -->
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
