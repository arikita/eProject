<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="now" class="java.util.Date"/>
<c:if test="${langue=='vi'}">
    <fmt:setLocale value="vi_VN"/>
</c:if>
<c:if test="${langue == 'en'}">
    <fmt:setLocale value="en_US"/>
</c:if>
<fmt:setBundle basename="lang.create" var="lang"/>
<style>

    /*td{
        word-wrap: break-word !important; 
        word-break: break-all !important; 
        white-space: normal !important;
    } */
    div.dropdown-menu{
        /*
       background: #f7ff00;
    background: -webkit-linear-gradient(45deg, #f7ff00, #db36a4)!important;
    background: linear-gradient(45deg, #f7ff00, #db36a4)!important;*/
        background: #6977c2 !important;


    }
    a.dropdown-item {
        background:  #000000 !important;
    }
    a.dropdown-item.active, a.dropdown-item:active {
        background:  #6977c2 !important;
    }
    a.dropdown-item.active:hover, .dropdown-item:active:hover {
        background:  #000000 !important;
    }
    a.dropdown-item:hover {
        background-color: #6977c2 !important;

    }

</style>
<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumb-->
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <h4 class="page-title"><fmt:message bundle="${lang}" key="voucherTable"/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Voucher</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><i class="fa fa-table"></i> <fmt:message bundle="${lang}" key="dataTable"/> </div>
                        <div class="icon-container" style="width: 20%"><span class="ti-pencil-alt" style="padding-top: 10px"></span><span class="icon-name"> <a href="<%= request.getContextPath()%>/file/voucher/createvoucher" class="btn btn-info btn-round btn-block waves-effect waves-light m-1 btn-outline-success"><fmt:message bundle="${lang}" key="create"/></a></span></div>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example"  class="table table-bordered content "  >
                                <thead>
                                    <tr style="text-align: center">
                                        <th scope="col"><fmt:message bundle="${lang}" key="name"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="keyvoucher"/></th>  
                                        <th scope="col"><fmt:message bundle="${lang}" key="valuein"/></th> 
                                        <th scope="col"><fmt:message bundle="${lang}" key="type"/></th>                                                                             
                                        <th scope="col"><fmt:message bundle="${lang}" key="minofcash"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="maxofvalue"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="description"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="limit"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="used"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="startdate"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="enddate"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="process"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="action"/></th>
                                         
                                    </tr>
                                </thead>
                                <tbody   style="word-break: break-all !important" class="content-center" >
                                     ${now}
                                    <c:forEach items="${vouchers}" var="b">
                                        <fmt:formatDate var="end" value="${b.voucherEndDate}" pattern="yyyy/MM/dd"/>
                                        <fmt:formatDate var="nown" value="${now}" pattern="yyyy/MM/dd"/>
                                       
                                        <!--comper end date to now - comper used to limit-->
                                        <tr <c:if test="${end lt nown || b.voucherLimit==b.voucherUsed}"> style="color: red"</c:if>>
                                            
                                            <td>${b.voucherName}</td>
                                            <td>${b.voucherKey}</td>
                                            <td style="text-align: right">${b.voucherCash}  ${b.voucherRole==1?"%":"$"}    </td> 
                                            <c:if test="${b.voucherRole==1}"><td style="color: lawngreen"><i class="fa fa-percent"></i> <fmt:message bundle="${lang}" key="percent"/></td></c:if>
                                            <c:if test="${b.voucherRole==2}"><td style="color: lightskyblue"><i class="fa fa-dollar"></i> <fmt:message bundle="${lang}" key="dollar"/></td></c:if>                                            
                                            
                                              
                                             <td style="text-align: right">${b.voucherMin}</td>
                                            <td style="text-align: right">${b.voucherMax}</td>  
                                            <td>${b.voucherDescription}</td>  
                                            <td style="text-align: right">${b.voucherLimit}</td>
                                             <td>${b.voucherUsed}</td>
                                            <fmt:formatDate var="voucherStart" value="${b.voucherStartDate}" pattern="dd/MM/yyyy"/>
                                            <td>${voucherStart}</td>
                                            <fmt:formatDate var="voucherEnd" value="${b.voucherEndDate}" pattern="dd/MM/yyyy"/>
                                            <td>${voucherEnd}</td>
                                            
                                            <td style="text-align: center"><c:if test="${end lt nown || b.voucherLimit==b.voucherUsed}"> <fmt:message bundle="${lang}" key="end"/></c:if></td>
                                            <td >
                                                <a href="<%= request.getContextPath()%>/file/voucher/detail/${b.voucherId}" style="color: lightseagreen"  ><span class="ti-zoom-in" ></span> <fmt:message bundle="${lang}" key="detail"/></a>
                                                <a href="<%= request.getContextPath()%>/file/voucher/editvoucher/${b.voucherId}" style="color: lawngreen"><span class="ti-check-box" ></span> <fmt:message bundle="${lang}" key="edit"/></a>
                                                <a href="#" style="color: red!important" data-toggle="modal" data-target="#modal-animation-${b.voucherId}" ><span class="ti-trash" ></span> <fmt:message bundle="${lang}" key="delete"/></a>

                                                <div class="modal fade" id="modal-animation-${b.voucherId}">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content animated zoomInUp">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title"><fmt:message bundle="${lang}" key="deletedata"/> </h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p><fmt:message bundle="${lang}" key="areyousure"/></p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> <fmt:message bundle="${lang}" key="close"/></button>
                                                                <a class="btn btn-success" href="<%= request.getContextPath()%>/file/voucher/delete/${b.voucherId}"><i class="fa fa-check-square-o"></i> <fmt:message bundle="${lang}" key="delete"/></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </td>
                                            
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr style="text-align: center">                                       
                                        <th scope="col"><fmt:message bundle="${lang}" key="name"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="keyvoucher"/></th>  
                                        <th scope="col"><fmt:message bundle="${lang}" key="valuein"/></th> 
                                        <th scope="col"><fmt:message bundle="${lang}" key="type"/></th>                                                                             
                                        <th scope="col"><fmt:message bundle="${lang}" key="minofcash"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="maxofvalue"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="description"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="limit"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="used"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="startdate"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="enddate"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="process"/></th>
                                        <th scope="col"><fmt:message bundle="${lang}" key="action"/></th>
                                        
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Row-->
        <!--start overlay-->
        <div class="overlay toggle-menu"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->

</div><!--End content-wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
<script src="https://cdn.datatables.net/fixedcolumns/3.3.1/js/dataTables.fixedColumns.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.colVis.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>


<script>

    $(document).ready(function () {

    //Default data table
    $('#default-datatable').DataTable();
    var table = $('#example').DataTable({
       "order": [[ 11, "asc" ]],
    lengthChange: true,
            "columnDefs": [
            
            {"orderable": false, "targets": [12]}, //hidden sort            
            {"searchable": false, "targets": [12]}, //hidden search
             { "visible": false, "targets": [3,4,5,7,6,8,9] },
            { "targets": [11,12], "className": 'noVis'}//hidden select visilibity
            ],
    <c:if test="${langue == 'vi'}">
    "language": {
    "sProcessing": "Đang xử lý...",
            "sLengthMenu": "Xem _MENU_ mục",
            "sZeroRecords": "Không tìm thấy dòng nào phù hợp",
            "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
            "sInfoFiltered": "(được lọc từ _MAX_ mục)",
            "sInfoPostFix": "",
            "sSearch": "Tìm:",
            "sUrl": "",
            "oPaginate": {
            "sFirst": "Đầu",
                    "sPrevious": "Trước",
                    "sNext": "Tiếp",
                    "sLast": "Cuối"
            }
    },
    </c:if>
    "processing": true, // ti?n x? lý tr??c
            "aLengthMenu": [[10, 20, 50,100], [10, 20, 50,100]],
            buttons: {
            buttons: [
            {extend: 'copy', text: '<fmt:message bundle="${lang}" key="copy"/>', exportOptions: {columns: [ 0, 1, 2, 3,4,5,6,7,8,9,10]}},
            {extend: 'excel', text: '<fmt:message bundle="${lang}" key="excel"/>', exportOptions: {columns: [ 0, 1, 2, 3,4,5,6,7,8,9,10]}, titletitle: 'Shoe export'},
            {extend: 'pdf', text: '<fmt:message bundle="${lang}" key="pdf"/>', footer: true, exportOptions: {columns: [0, 1, 2, 3,4,5,6,7,8,9,10]}, title: 'SHOE EXPORT', download: 'open'},
            {extend: 'print', text: '<fmt:message bundle="${lang}" key="print"/>', exportOptions: {columns: [ 0, 1, 2, 3,4,5,6,7,8,9,10]}, title: 'Shoe export'},
            {extend: 'colvis', text: '<fmt:message bundle="${lang}" key="columnvisibility"/>', columns: ':not(.noVis)'}
            ]
            }

    });
    //table.columns([6]).visible(false);
    table.buttons().container()
            .appendTo('#example_wrapper .col-md-6:eq(0)');
    });

</script>

