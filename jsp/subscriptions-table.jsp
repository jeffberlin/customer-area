<%@ include file="/includes/core.jsp" %>
<form name="requestcancel" action="https://customers-new.bmtmicro.com/servlets/Customers.Subscriptions" method="post" onSubmit="cancelSubscription();">
  <input type="hidden" name="ACTION" value="1"/>
  <input type="hidden" name="SUBSCRIPTIONID" value=""/>
  <input type="hidden" name="NEXT_PAGE" value="https://customers-new.bmtmicro.com/cancel-success.jsp"/>
  <input type="hidden" name="ERROR_PAGE" value="https://customers-new.bmtmicro.com/error.jsp"/>
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
        ${requestScope.TABLEDATA}
      </tbody>
      <tfoot>
        <tr class="table-total">
          <th colspan="6"></th>
        </tr>
      </tfoot>
    </table>
  </div> <!-- /.row table-responsive -->
</form>
