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
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/addPages.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://secure.bmtmicro.com/OrderScript/orderScript.js"></script>
    <script>
      function updateCardInfo (form) {
        if (verifyCreditCardInfo (form)) {
          form.submit ();
        }
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
              <h4>Update payment info</h4>
              <div class="content-box">
                <form name="subscriptions" action="https://customers.bmtmicro.com/servlets/Customers.Subscriptions" method="post">
                  <input type="hidden" name="ACTION" value="3"/>
                  <input type="hidden" name="SUBSCRIPTIONID" value="${requestScope.SUBSCRIPTIONID}"/>
                  <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/subscriptions-update-payment-success.jsp"/>
                  <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/subscriptions-update-payment-error.jsp"/>
                  <div>
                    <span>
                      <label>Card number:&nbsp;</label>
                      <input type="text" name="CCNUMBER" id="CCNUMBER" size="30" autocomplete="off" required style="margin-bottom: 1rem;" />
                    </span>
                    <br>
                    <span>
                      <label>Expiration date:&nbsp;</label>
                      <select id="CCEXPIREMONTH" name="CCEXPIREMONTH" required style="margin-bottom: 1rem;">
                        <option value="" selected="selected" disabled>Month</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
    			            &nbsp;/&nbsp;
                      <select id="CCEXPIREYEAR" name="CCEXPIREYEAR" required style="margin-bottom: 1rem;">
                        <option value="" selected="selected" disabled>Year</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                        <option value="2026">2026</option>
                        <option value="2027">2027</option>
                        <option value="2028">2028</option>
                        <option value="2029">2029</option>
                        <option value="2030">2030</option>
                        <option value="2031">2031</option>
                        <option value="2032">2032</option>
                        <option value="2033">2033</option>
                        <option value="2034">2034</option>
                        <option value="2035">2035</option>
                        <option value="2036">2036</option>
                        <option value="2037">2037</option>
                        <option value="2038">2038</option>
                        <option value="2039">2039</option>
                        <option value="2040">2040</option>
                        <option value="2041">2041</option>
                        <option value="2042">2042</option>
                        <option value="2043">2043</option>
                        <option value="2044">2044</option>
                        <option value="2045">2045</option>
                        <option value="2046">2046</option>
                        <option value="2047">2047</option>
                        <option value="2048">2048</option>
                        <option value="2049">2049</option>
                      </select>
                    </span>
                    <br>
                    <span>
                      <label>Security code:&nbsp;</label>
                      <input type="password" id="CVV" name="CVV" size="4" autocomplete="off" required style="margin-bottom: 1rem;" />
                      <span class="note"><a href="javascript:window.open('https://secure.bmtmicro.com/resources/info/CVV.html', '_blank', 'toolbar=yes,location=yes,directories=yes,resizable=yes,scrollbars=yes'); replace=no" tabindex="-1">Where is the security code?</a></span>
                    </span>
                    <br>
                    <span>
                      <label>Billing ZIP/Postal Code:&nbsp;</label>
                      <input type="text" id="ZIP" name="ZIP" size="5" maxlength="20" required style="margin-bottom: 1rem;" />
                    </span>
                    <br>
                    <button type="button" class="grey-btn" onclick="updateCardInfo (this.form);">Update</button>
                    <p style="font-size: .7rem; margin-top: .5rem; margin-bottom: 0;">*&nbsp;When updating your credit card, a temporary authorization for the would-be purchase amount will be placed on the card to verify the card's legitimacy. This authorization will be voided automatically by the system. You will not be charged until the actual renewal date of your subscription.</p>
                    <br>
                  </div>
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
