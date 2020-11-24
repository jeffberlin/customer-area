<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<form name="subscriptions" action="https://customers.bmtmicro.com/servlets/Customers.Subscriptions" method="post" onSubmit="cancelSubscription();">
  <input type="hidden" name="ACTION" value="1"/>
  <input type="hidden" name="SUBSCRIPTIONID" value=""/>
  <input type="hidden" name="NEXT_PAGE" value="https://customers.bmtmicro.com/cancel-success.jsp"/>
  <input type="hidden" name="ERROR_PAGE" value="https://customers.bmtmicro.com/error.jsp"/>
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
        <c:forEach var="row" items="${requestScope.TABLEDATA}">
          <tr>
            <td align="center">${row.PRODUCTNAME}</td>
            <td align="center">${row.PRICE}</td>
            <td align="center">${row.EFFECTIVEDATE}</td>
            <td align="center"><c:if test="${empty row.EXPIRATIONDATE}">Active</c:if>${row.EXPIRATIONDATE}</td>
            <td align="center">${row.NEXTBILLINGDATE}</td>
            <td align="center"><c:if test="${empty row.EXPIRATIONDATE}"><input type="button" <c:if test="${row.ALLOWCANCEL!=0}">value="Cancel"</c:if><c:if test="${row.ALLOWCANCEL==0}">value="Request Change"</c:if> onclick="cancelSubscription(${row.SUBSCRIPTIONID},${row.ALLOWCANCEL})" /></c:if><c:if test="${!empty row.EXPIRATIONDATE}">Cancelled</c:if></td>
          </tr>
        </c:forEach>
      </tbody>
      <tfoot>
        <tr class="table-total">
          <th colspan="6"></th>
        </tr>
      </tfoot>
    </table>
  </div> <!-- /.row table-responsive -->
</form>
