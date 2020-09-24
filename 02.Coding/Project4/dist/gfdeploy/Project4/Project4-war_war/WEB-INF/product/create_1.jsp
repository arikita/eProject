<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${langue=='vi'}">
    <fmt:setLocale value="vi_VN"/>    
</c:if>
<c:if test="${langue == 'en'}">
    <fmt:setLocale value="en_US"/>
</c:if>
<fmt:setBundle basename="lang.create" var="lang"/>

<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumb-->
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <h4 class="page-title">Fancy Lightbox</h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javaScript:void();">Dashtreme</a></li>
                    <li class="breadcrumb-item"><a href="javaScript:void();">Components</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Fancy Lightbox</li>
                </ol>
            </div>
            <div class="col-sm-3">
                <div class="btn-group float-sm-right">
                    <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i> Setting</button>
                    <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <div class="dropdown-menu">
                        <a href="javaScript:void();" class="dropdown-item">Action</a>
                        <a href="javaScript:void();" class="dropdown-item">Another action</a>
                        <a href="javaScript:void();" class="dropdown-item">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a href="javaScript:void();" class="dropdown-item">Separated link</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Vertical Form</div>
                        <hr>
                        <form onsubmit="abcd()" action="#">
                            <div class="form-group">
                                <label  for="input-1">Name</label>
                                <select class="form-control" id="input-1" name="category">
                                    <option value="1">abc</option>
                                    <option value="2">abcd</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="input-2">Email</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Email</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Email</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
                            </div>
                            <div class="form-group">
                                <button type="submit" id="submit" class="btn btn-light btn-round px-5"><i class="icon-lock"></i> Register</button>
                                <a class="btn btn-primary pull-right add-record" data-added="0"><i class="glyphicon glyphicon-plus"></i> Add Row</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Round Vertical Form</div>
                        <hr>
                        <form>
                            <div class="form-group">
                                <label for="input-6">Name</label>
                                <span class="form-control form-control-rounded" id="input-6"></span>
                            </div>
                            <div class="form-group">
                                <label for="input-7">Email</label>
                                <input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div><!--End Row-->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header text-uppercase">Without Image Caption</div>
                    <div class="card-body">
                        <div class="row">
                            <form enctype="multipart/form-data">
                                <table class="table table-bordered" id="tbl_posts">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Post Name</th>
                                            <th>No. of Vacancies</th>
                                            <th>Age</th>
                                            <th>Pay Scale</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbl_posts_body">
                                        <tr id="rec-1">
                                            <td><span class="sn">1</span>.</td>
                                            <td>Sanitary Inspector</td>
                                            <td>02</td>
                                            <td>21 to 42 years</td>
                                            <td>5200-20200/-</td>
                                            <td><a class="btn btn-xs delete-record" data-id="1"><i class="glyphicon glyphicon-trash"></i></a></td>
                                        </tr>
                                        <tr id="rec-2">
                                            <td><span class="sn">2</span>.</td>
                                            <td>Tax & Revenue Superintendent</td>
                                            <td>02</td>
                                            <td>21 to 42 years</td>
                                            <td>5200-20200/-</td>
                                            <td><a class="btn btn-xs delete-record" data-id="2"><i class="glyphicon glyphicon-trash"></i></a></td>
                                        </tr>

                                        <tr id="rec-3">
                                            <td><span class="sn">3</span>.</td>
                                            <td>Tax & Revenue Inspector</td>
                                            <td>04</td>
                                            <td>21 to 42 years</td>
                                            <td>5200-20200/-</td>
                                            <td><a class="btn btn-xs delete-record" data-id="3"><i class="glyphicon glyphicon-trash"></i>de</a></td>
                                        </tr>

                                    </tbody>
                                </table>
                                <div style="display:none;">
                                    <table id="sample_table2">
                                        <tr id="">
                                            <td><span class="sn"></span>.</td>
                                            <td>ABC Posts</td>
                                            <td>04</td>
                                            <td>21 to 42 years</td>
                                            <td>5200-20200/-</td>
                                            <td><a class="btn btn-xs delete-record" data-id="0"><i class="glyphicon glyphicon-trash"></i>de</a></td>
                                        </tr>
                                    </table>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div><!--End Row-->
        <!--start overlay-->
        <div class="overlay toggle-menu"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->

</div><!--End content-wrapper-->
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/jquery.validate.js"></script>
<script>
                            $("#input-1").change(function () {
                                $("#input-6").val("Glenn Quagmire");
                                $("#input-7").val("Glenn Quagmire");
                            });
                            $("#input-2").change(function () {
                                $("#input-6").val("agd");
                                $("#input-7").val("777");
                            });
                            jQuery(document).delegate('a.add-record', 'click', function (e) {
                                e.preventDefault();
                                var content = jQuery('#sample_table2 tr'),
                                        size = jQuery('#tbl_posts >tbody >tr').length + 1,
                                        element = null,
                                        element = content.clone();
                                element.attr('id', 'rec-' + size);
                                element.find('.delete-record').attr('data-id', size);
                                element.appendTo('#tbl_posts_body');
                                element.find('.sn').html(size);
                            });
                            jQuery(document).delegate('a.delete-record', 'click', function (e) {
                                e.preventDefault();
                                var didConfirm = confirm("Are you sure You want to delete");
                                if (didConfirm == true) {
                                    var id = jQuery(this).attr('data-id');
                                    var targetDiv = jQuery(this).attr('targetDiv');
                                    jQuery('#rec-' + id).remove();

                                    //regnerate index number on table
                                    $('#tbl_posts_body tr').each(function (index) {
                                        //alert(index);
                                        $(this).find('span.sn').html(index + 1);
                                    });
                                    return true;
                                } else {
                                    return false;
                                }
                            });

</script>
