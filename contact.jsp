<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
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
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://customers.bmtmicro.com/js/dynamicOptionsList.js"></script>
    <style media="screen" type="text/css">
      .content-box {
        padding: 1rem;
      }
    </style>
    <script>
      function process(form) {
        if (form.EMAIL.value == "") {
          alert('You must input an Email Address');
          form.EMAIL.focus();
          return false;
        }
        if (!isValidEmail (form.EMAIL.value)) {
          alert ("You must provide a VALID email address!");
          form.EMAIL.focus ();
          return (false);
        }
        return (true);
      }

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

      function submitButton (form) {
        var customer = getCookieValue ("BMTMicro.Customers.AccountID");
        if (customer != null) {
          document.write("<input type='submit' value='Submit' name='button' class='save-btn' id='update' />");
        } else {
          document.write("Please <a href='https://customers.bmtmicro.com/'>login</a> to submit your support request!");
        }
      }
    </script>
  </head>
  <body onload="initDynamicOptionLists()">
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <jsp:include page="/includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Customer Support Request Form</h4>
              <div class="content-box overflow-auto">
                <form name="form1" method="post" action="https://vendors.bmtmicro.com/servlets/System.EMailTemplate" onsubmit="return process (form1);" style="margin-bottom: 0;">
                  <input type="hidden" name="RECIPIENT" value="mdaemon@bmtmicro.com" />
                  <input type="hidden" name="SUBJECT" value="BMT Micro Customer Support Request" />
                  <input type="hidden" name="EMAILTEMPLATE" value="https://customers.bmtmicro.com/contactemail.txt" />
                  <input type="hidden" name="REDIRECT" value="0" />
                  <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/contact-success.jsp" />
                  <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/error-page.jsp" />
                  <input type="hidden" name="ACCOUNTID" value="${requestScope.ACCOUNTID}" />
                  <input type="hidden" name="ACCOUNTEMAIL" value="${requestScope.ACCOUNTEMAIL}" />
                  <script id="options">
                    var requestTitle = new DynamicOptionList();
                    requestTitle.addDependentFields("TITLE","SUBTITLE");
                    requestTitle.forValue("General").addOptions("Request Developer Contact Information","Billing Question","Problem During Purchase","VAT","BMT Download Problems","Feature Suggestion","Customer Comments");
                    requestTitle.forValue("Order Information").addOptions("Cannot Find Order","How can I change my payment method?","Can I see outstadning PayPal orders?","When was this item shipped?","Why did my password expire?","Why am I paying BMT Micro?");
                    requestTitle.forValue("Your Information").addOptions("Update Billing Address","Update Email Address","Change Password");
                    requestTitle.forValue("Your Payment Information").addOptions("Change Payment Method","Update Credit Card Number","Update PayPal Address","Update Debit Card");
                    requestTitle.forValue("Subscription Management").addOptions("Buy Additional Subscriptions","Review Terms of Subscription","Check Available SmurfTickets","Cancel Subscription");
                    requestTitle.forValue("Other").addOptions("Please specify below...");
                    requestTitle.forValue("General").setDefaultOptions("Problem with Product Received");
                    requestTitle.forValue("Orders").setDefaultOptions("Resend Order Information");
                    requestTitle.forValue("Account Management").setDefaultOptions("Help Updating Account");
                    requestTitle.forValue("Other").setDefaultOptions("Please specify below...");
                    requestTitle.selectFirstOption = false;
                  </script>
                  <span>
                    <label>Your Name:&nbsp;</label>
                    <input type="text" name="NAME" size="25" value="" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label>Your Email:&nbsp;</label>
                    <input type="text" name="EMAIL" size="25" value="" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label>Subject:&nbsp;</label>
                    <select name="TITLE" style="margin-bottom: 1rem;">
                      <option value="General" selected="selected"<c:if test="${requestScope.TITLE=='General'}">checked</c:if>>General</option>
                      <option value="Order Information"<c:if test="${requestScope.TITLE=='Order Information'}">checked</c:if>>Order Information</option>
                      <option value="Your Information"<c:if test="${requestScope.TITLE=='Your Information'}">checked</c:if>>Your Information</option>
                      <option value="Your Payment Method"<c:if test="${requestScope.TITLE=='Your Payment Method'}">checked</c:if>>Your Payment Method</option>
                      <option value="Subscription Management"<c:if test="${requestScope.TITLE=='Subscription Management'}">checked</c:if>>Subscription Management</option>
                      <option value="Other"<c:if test="${requestScope.TITLE=='Other'}">checked</c:if>>Other...</option>
                    </select>
                    <br>
                    More Specific:
                    <select name="SUBTITLE" value="" style="margin-bottom: 1rem;">
                      <script>requestTitle.printOptions("SUBTITLE")</script>
                    </select>
                  </span>
                  <br>
                  <span>
                    <label>Other:&nbsp;</label>
                    <input type="text" name="OTHERSUBJECT" value="" size="25" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label>Website you ordered from:&nbsp;</label>
                    <input type="text" name="URL" size="35" value="http://" style="margin-bottom: 1rem;" />
                  </span>
                  <br>
                  <span>
                    <label style="margin-bottom: .2rem;">Question/Comment:&nbsp;</label>
                    <br>
                    <textarea name="DESCRIPTION" rows="8" cols="75" style="margin-bottom: 2rem;"></textarea>
                  </span>
                  <br>
                  <input type="reset" value="Clear" name="reset" class="save-btn" style="margin-right: .5rem;" />
                  <script>
                    submitButton (document.forms[0]);
                  </script>
                  <noscript>JavaScript is required!</noscript>
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
  <script>
    $('input[type=checkbox]').change(function(){
      $(this).prev('input[type=hidden]').val (this.checked ? -1 : 0);
    });
  </script>
</html>
