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
    <title>BMT Micro Customer Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://customers-new.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src='https://customers-new.bmtmicro.com/js/TableSort.js'></script>
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
              <h4>Your Subscription Credits</h4>
              <p>Each line represents one credit available.</p>
              <div class="content-box overflow-auto">
                <div class="table-header">
                  <span>&nbsp;</span>
                </div><!-- /.table-header -->
                <div class="row table-responsive" style="margin-left: auto; margin-right: auto;">
                  <table class="table" id="selection">
                    <thead>
                      <tr class="table-category">
                        <th scope="col" class="sort-column text-center sortable-text sort" title="Sort on 'Subscripton Name'">
                          <a href="#" class="fdTableSortTrigger">Subscripton Name</a>
                        </th>
                        <th scope="col" class="sort-column text-center sortable-date-ymd sort" title="Sort on 'Date'">
                          <a href="#">Expiration Date</a>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      ${requestScope.TABLEDATA}
                    </tbody>
                    <tfoot>
                      <tr class="table-total">
                        <th colspan="2"></th>
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
