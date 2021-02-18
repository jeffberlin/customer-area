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
    <%@ include file="/includes/favicon-meta.html" %>
    <title>BMT Micro Customers Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://customers.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
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
              <h4>Privacy Policy</h4>
              <div class="content-box overflow-auto">
                <p>BMT Micro, Inc., respects the privacy of our partners, clients and their customers. Any and all information collected through our system is treated with the utmost care.</p>
                <p>BMT Micro, Inc. asks customers to supply various personal data when placing an order, such as name and address, credit-card information, and E-mail address. We use this data only for the purpose of filling an order, or communicating with the customer or supplier about the status of an order.</p>
                <p>We will release personally identifiable information to third parties and organizations when we believe it is appropriate for us to do so in order to comply with the law or to protect against fraud. We will also release such information to cooperate with law enforcement or other governmental investigations (without necessarily requiring the requesting law enforcement or government agency to formally serve us with a subpoena), comply with all valid court orders or subpoenas, protect the legal rights of us and our users, or when we believe it is needed for fraud protection and/or credit risk reduction.</p>
                <p>Except for the circumstances set forth in the previous paragraph, we will not knowingly distribute customer information to be used in mailing lists, surveys, or any other purpose other than what is required to perform our services.</p>
                <h5>What information do we collect? How do we use it?</h5>
                <p>When ordering from BMT Micro, Inc. we must collect the purchaser's name, email address, mailing address, phone number and credit card information. This allows us to process and fulfill orders and provide notification of the order status.</p>
                <h5>How does BMT Micro, Inc. protect customer information?</h5>
                <p>Customers who buy through the BMT Micro, Inc. system are shopping on a secure server, which encrypts all of the customer's personal information including name, address and credit card number. Encryption ensures that no one can access or use personal information in an unauthorized manner.</p>
                <p>Our commerce system was developed in-house with security as the foremost concern. </p>
                <p>BMT Micro, Inc. has made an investment in protecting our clients' and customers' information utilizing the following technologies:</p>
                <h6 class="blue">Firewall</h6>
                <p>Firewalls allow the use of authenticated access and can prevent certain types of traffic from entering the private network. Customizing the firewall according to the network topology is essential to having a useful firewall protection mechanism.</p>
                <h6 class="blue">SSL (Secure Socket Layers)</h6>
                <a href="javascript:OpenCertDetails()"><img src="https://secure.bmtmicro.com/ShoppingCart/60x60_static.gif" border="0" alt="Check Site Security" style="margin-bottom: .5rem;"></a>
                <p>Because we accept sensitive information from end-users such as passwords and credit card numbers, BMT Micro, Inc.'s site uses SSL. This logic encrypts the data being sent to the server from the browser using high-level encryption technology. Once the data is received from customers on the BMT Micro, Inc. network, it may be required that the data be maintained for a certain period of time inside our private network. Encrypting the data means it cannot be viewed in plain text.</p>
                <h6 class="blue">Security Metrics</h6>
                <a href="javascript:OpenSecurityMetrics()"><img src="https://www.securitymetrics.com/images/sm_ccsafe_whborder.gif" alt="SecurityMetrics Identity Theft Protected" border="0" style="margin-bottom: .5rem;"></a>
                <p>BMT Micro is reviewed quarterly by Security Metrics to ensure that high security standards are maintained. Security Metrics tests for over 4400 security weaknesses!</p>
                <h6 class="blue">What about cookies?</h6>
                <p style="margin-bottom: 0;">"Cookies" are small pieces of information that are stored by your browser on your computer's hard drive. BMT Micro, Inc.'s cookies are used only to aid in purchasing and do not store any specific customer traits. These cookies do not store sensitive data.  Cookies are P3P enabled to ensure security.</p>
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
