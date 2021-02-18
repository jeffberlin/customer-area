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
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/table.css"/>
    <style media="screen" type="text/css">
      .content-box {
        padding: 1rem;
      }
      .marginBottom {
        margin-bottom: .1rem;
      }
    </style>
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
              <h4>Frequently Asked Questions</h4>
              <div class="content-box overflow-auto">
                <p class="marginBottom"><strong>Question:</strong>&nbsp;Why does BMT Micro appear on my credit/debit card statement?</p>
                <p><strong>Answer:</strong>&nbsp;This indicates that you have purchased an item through the BMT Micro order system on the internet.  We represent a large number of software vendors on the internet and it is possible that you have not visited our site, but you have been billed by BMT Micro on behalf of one of our software vendors. You should have received an email message at the time of purchase containing your receipt and other information pertaining to the order.</p>
                <hr>
                <p class="marginBottom"><strong>Question:</strong>&nbsp;What is BMT Micro?</p>
                <p><strong>Answer:</strong>&nbsp;BMT Micro is a software distribution and order fulfillment service for professional through part time software developers. We are also a software repository where the general public can select from the extensive catalog of software written by those same developers.</p>
                <hr>
                <p class="marginBottom"><strong>Question:</strong>&nbsp;I just placed an order, what happens next?</p>
                <p><strong>Answer:</strong>&nbsp;Once you have placed an order online, you should receive either an order receipt or order confirmation within minutes via email. Keep in mind that a number of factors including the use of "freemail" accounts and heavy network traffic can delay this message for up to 48 hours. If you have not received any confirmation and 48 hours have passed, please contact our customer service team.<br>If the product is deliverable by email you should also receive the product registration information within minutes. The same exceptions apply as above in addition to the fact that a large number of products are delivered by the develpors themselves. In the case of products delivered by the developer, you should contact them at the email address included in your order confirmation for information on when the product will be delivered.</p>
                <hr>
                <p class="marginBottom"><strong>Question:</strong>&nbsp;I purchased a product that is downloadable but the download link in my email does not work. Why not?</p>
                <p><strong>Answer:</strong>&nbsp;The download instructions include a long link similar to this:<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://download.bmtmicro.com/0012345/9876543210/<br><br>If this link is wrapped when received in your email, it may not be clickable. Please copy and paste the link into a text editor to ensure it is all in one line. Then insert the link into the address bar of your browser.</p>
                <hr>
                <p class="marginBottom"><strong>Question:</strong>&nbsp;I'm having all sorts of problems. Can BMT Micro help?</p>
                <p><strong>Answer:</strong>&nbsp;Yes we can help you. If you are having trouble downloading a particular title, have questions about billing, shipping, order status and available software, we have the answers to your questions.<br><br>If you are having problems regarding software features, configuration, compatibility or upgradability, then you need to contact the developer of that software.<br><br>If you are having trouble finding a contact address for the developer, we can forward your inquiry to them or provide you with contact information.</p>
                <hr>
                <p class="marginBottom"><strong>Question:</strong>&nbsp;Who should I contact with general questions about a particular title?</p>
                <p style="margin-bottom: 0;"><strong>Answer:</strong>&nbsp;Our customer service staff will be more than happy to assist you with general product information such as product price, delivery options and availability.<br><br>Any questions regarding compatibility, specific product features and functionality should be directed to the developer.</p>
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
