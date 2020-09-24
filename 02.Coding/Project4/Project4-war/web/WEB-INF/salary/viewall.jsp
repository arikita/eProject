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
        background-salary: #6977c2 !important;

    }

</style>
<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumb-->
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <h4 class="page-title"><fmt:message bundle="${lang}" key="salaryTable"/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Salary</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class=""><i class="fa fa-table"></i> Data Salary</div>
                    <div class="icon-container" style="width: 20%"><span class="ti-pencil-alt" style="padding-top: 10px"></span><span class="icon-name"> <a href="<%= request.getContextPath()%>/file/salary/createsalary" class="btn btn-info btn-round btn-block waves-effect waves-light m-1 btn-outline-success"><fmt:message bundle="${lang}" key="create"/></a></span></div>
                    <div class="">

                        <div class="table-responsive">
                            <table id="example" class="table table-bordered content" cellspacing="0">
                                <thead>
                                    <tr style="text-align: center">
                                        <th>STT</th>
                                        <th>salaryWorkingDay</th>
                                        <th>salaryOvertime</th>
                                        <th>salaryDayOff</th>                                        
                                        <th>salaryHoliday</th>
                                        <th>salaryAllowance</th>
                                        <th>salaryBonus</th>
                                        <th>salaryOther</th>
                                        <th>salaryOtherDetail</th>
                                        <th>salaryReduce</th>
                                        <th>salaryReduceDetail</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${salarys}" var="b">
                                        <tr style="text-align: center">
                                            <td>${b.salaryId}</td>
                                            <td>${b.salaryWorkingDay}</td>
                                            <td>${b.salaryOvertime}</td>
                                            <td>${b.salaryDayOff}</td>
                                            <td>${b.salaryHoliday}</td>
                                            <td>${b.salaryAllowance}</td>
                                            <td>${b.salaryBonus}</td>
                                            <td>${b.salaryOther}</td>
                                            <td>${b.salaryOtherDetail}</td>
                                            <td>${b.salaryReduce}</td>
                                            <td>${b.salaryReduceDetail}</td>
                                            <td>
                                                ${((b.salaryWorkingDay+b.salaryOvertime-b.salaryDayOff+b.salaryHoliday*3)/8)*5+b.salaryBonus+b.salaryOther-b.salaryReduce}$
                                            </td>
                                            <td >                                              
                                                <a href="<%= request.getContextPath()%>/file/salary/editsalary/${b.salaryId}" style="color: lawngreen"><span class="ti-check-box" ></span> <fmt:message bundle="${lang}" key="edit"/></a>                                                
                                            </td>
                                        </tr>
                                    </c:forEach>       
                                </tbody>
                                <tfoot>
                                    <tr style="text-align: center">
                                        <th>STT</th>
                                        <th>salaryWorkingDay</th>
                                        <th>salaryOvertime</th>
                                        <th>salaryDayOff</th>                                        
                                        <th>salaryHoliday</th>
                                        <th>salaryAllowance</th>
                                        <th>salaryBonus</th>
                                        <th>salaryOther</th>
                                        <th>salaryOtherDetail</th>
                                        <th>salaryReduce</th>
                                        <th>salaryReduceDetail</th>
                                        <th>Total</th>
                                        <th>Action</th>
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

    lengthChange: true,
            "columnDefs": [
            {"orderable": false, "targets": 0},
            {"orderable": false, "targets": 0}, //hidden sort
            {"searchable": false, "targets": 0},
            {"searchable": false, "targets": 0}, //hidden search
            { "targets": 2, "className": 'noVis'}//hidden select visilibity
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
            "aLengthMenu": [[5, 10, 20, 50], [5, 10, 20, 50]],
            buttons: {
            buttons: [
            {extend: 'copy', text: '<fmt:message bundle="${lang}" key="copy"/>', exportOptions: {columns: [ 0, 1, 2, 3 ]}},
            {extend: 'excel', text: '<fmt:message bundle="${lang}" key="excel"/>', exportOptions: {columns: [ 0, 1, 2, 3 ]}, titletitle: 'Shoe export'},
            {extend: 'pdf', text: '<fmt:message bundle="${lang}" key="pdf"/>', footer: true, exportOptions: {columns: [ 0, 1, 2, 3]}, title: 'SHOE EXPORT', download: 'open'},
            {extend: 'print', text: '<fmt:message bundle="${lang}" key="print"/>', exportOptions: {columns: [ 0, 1, 2, 3]}, title: 'Shoe export'},
            {extend: 'colvis', text: '<fmt:message bundle="${lang}" key="columnvisibility"/>', columns: ':not(.noVis)'}
            ]
            }

    });
    //table.columns([6]).visible(false);
    table.buttons().container()
            .appendTo('#example_wrapper .col-md-6:eq(0)');
    });


</script>

