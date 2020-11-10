<%@ include file="/includes/core.jsp" %>
<div class="table-header">
  <span>&nbsp;</span>
</div><!-- /.table-header -->
<div class="row table-responsive" style="margin-left: auto; margin-right: auto;">
  <table class="table" id="selection">
    <thead>
      <tr class="table-category">
        <th scope="col" class="sort-column text-center sortable-numeric sort" title="Sort on 'Order ID'">
          <a href="#" class="fdTableSortTrigger">Order ID</a>
        </th>
        <th scope="col" class="sort-column text-center sortable-date-ymd sort" title="Sort on 'Date'">
          <a href="#">Date</a>
        </th>
        <th scope="col" class="sort-column text-center sortable-numeric sort" title="Sort on 'Quantity'">
          <a href="#">Qty</a>
        </th>
        <th scope="col" class="sort-column text-center sortable-text sort" title="Sort on 'Product Name'">
          <a href="#">Product Name</a>
        </th>
        <th scope="col" class="sort-column text-center sortable-currency sort" title="Sort on 'Amount'">
          <a href="#">Amount</a>
        </th>
      </tr>
    </thead>
    <tbody>
      ${requestScope.TABLEDATA}
    </tbody>
    <tfoot>
      <tr class="table-total">
        <th colspan="5"></th>
      </tr>
    </tfoot>
  </table>
</div> <!-- /.row table-responsive -->
