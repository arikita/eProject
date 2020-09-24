<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/select2/css/select2.min.css" rel="stylesheet"/>
<link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/inputtags/css/bootstrap-tagsinput.css" rel="stylesheet" />
<c:if test="${langue=='vi'}">
    <fmt:setLocale value="vi_VN"/>    
</c:if>
<c:if test="${langue == 'en'}">
    <fmt:setLocale value="en_US"/>
</c:if>
<fmt:setBundle basename="lang.create" var="lang"/>
<style>
    .buil {
        box-sizing: border-box;
        display: inline-block;
        margin: 0px;
        padding: 0px;
        float: left;
    }

    .buil ul li {
        display: inline-block;
    }

    .buil ul li a {
        display: block;
        text-decoration: none;
        clear: both;
    }
    .sum {
        box-sizing: border-box;
        margin: 0px 0px;
        padding: 0px 0px;
    }
    a,
    a:hover {
        text-decoration: none;
    }
    .box {
        position: relative;
        width: 100%;
        height: 100%;
        margin: auto 0px;
        border: #dbd4d1 solid 1px;
        border-radius: 3px;
        transition: transform .2s;
    }

    .box:hover {
        -ms-transform: scale(1.1);
        -webkit-transform: scale(1.1);
        transform: scale(1.03);
    }

    .box img {
        width: 100%;
        height: 140px;

    }

    .card-img img {
        width: 40px;
        height: 40px;
        float: right;
        margin-top: -20px;
        margin-right: -4px;
    }

    .tensp {
        float: left;
    }

    .gia {
        clear: both;
        margin-left: 3px;
        float: left;
        color: red;
    }

    .giagoc {
        float: left;
    }

    .mainprice {
        float: right;
        margin-right: 3px;
        text-decoration: line-through;
        color: red;
    }

    .sale {
        position: absolute;
        top: -5px;
        right: -5px;
        background: url(${links}/images/km.png) no-repeat;
        padding: 12px 5px;
    }

    div.mua {
        text-align: center;
        clear: both;
        background: red;
        margin: 0px 30px;
        margin-bottom: 5px;
        border-radius: 3px;
    }

    .number {
        background: red;
        position: absolute;
        bottom: 70px;
        font-size: 10px;
        right: 0px;
        color: white;
        border-radius: 20px;
        padding: 0px 3px;
    }
    .img-thumbnail{
        padding: 0rem;
    }
    .modal-content{
        background: #08a50e;
    }
</style>
<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumb-->
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <h4 class="page-title"><fmt:message bundle='${lang}' key='pointofsale'/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/file/product/viewall/">Point Of Sale</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sale</li>

                </ol>
            </div>       
        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-md-12">
                <button class="btn btn-light waves-effect waves-light" data-toggle="modal" data-target="#formemodal" style="float: right;margin-bottom: 5px">New Order</button>
                <!-- Modal -->
                <div class="modal fade" id="formemodal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">New Order</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label>User Name</label>
                                        <select class="form-control single-select">
                                            <option>Phone Number</option>
                                            <option>tan@gmail.com</option>
                                            <option>vu@gmail.com</option>
                                            <option>hung@gmail.com</option>
                                            <option>thanh@gmail.com</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="input-2">Email</label>
                                        <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
                                    </div>
                                    <div class="form-group">
                                        <button type="button" data-dismiss="modal" class="btn btn-white waves-effect waves-light m-1">Cancel</button>
                                        <button type="submit" class="btn btn-info waves-effect waves-light m-1">Apply</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header text-uppercase">                              
                                <div class="input-group" style="width: 250px">
                                    <input type="text" class="form-control" placeholder="Search item...">
                                    <div class="input-group-append">
                                        <button class="btn btn-light" type="button"><i style="font-size: 150%" class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </div>      
                            <div class="card-body">
                                <div class="row">
                                    <c:forEach items="${products}" var="p">                                       
                                        <div class="col-md-6 col-lg-3 col-xl-3" style="margin-bottom: 5px" data-toggle="modal" data-target="#add-item-modal-${p.productId}">
                                            <div class="box">
                                                <img src="${links}/images/${p.productPicture}" class="lightbox-thumb img-thumbnail"/>
                                                <div class="price-img">
                                                    <span class="tensp">${p.productName}</span>
                                                    <span class="card-img">
                                                        <img src="${links}/images/cart.png" />
                                                        <span class="number">0</span>
                                                    </span>
                                                    <span class="gia">Gia:</span>
                                                    <span class="giagoc">${p.productPrice}</span>
                                                    <span class="mainprice">12,000d</span>
                                                    <span class="sale">-21%</span>
                                                </div>
                                                <div class="mua">
                                                    <a href="#">View More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="add-item-modal-${p.productId}">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="name">${p.productName}</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body"> 
                                                        <form id="form_ticket">
                                                            <div class="form-group">
                                                                <label>Quantity</label>                                                                                                                                                             
                                                                <input id="demo3_21" type="text" value="1" name="demo3_21">                                                                                                        
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Color</label>
                                                                <select class="form-control single-select">
                                                                    <option>Mau Xanh</option>
                                                                    <option>Mau Do</option>
                                                                    <option>Mau Trang</option>
                                                                    <option>Mau Vang</option>
                                                                    <option>Mau Huong</option>
                                                                </select>
                                                            </div>                                                      
                                                            <div class="form-group">
                                                                <label>Size</label>
                                                                <select class="form-control single-select" >
                                                                    <option>35</option>
                                                                    <option>36</option>
                                                                    <option>37</option>
                                                                    <option>38</option>
                                                                    <option>39</option>
                                                                </select>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group">
                                                                <button type="button" data-dismiss="modal" class="btn btn-white waves-effect waves-light m-1" >Cancel</button>
                                                                <button type="submit" onclick="" style="margin-right: 20px" class="btn btn-info waves-effect waves-light m-1">Apply</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Row-->
            </div>

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-tabs-primary top-icon nav-justified">
                            <li class="nav-item">
                                <a href="javascript:void();" data-target="#profile" data-toggle="pill" class="nav-link active"><i class="icon-calendar icons"></i> <span class="hidden-xs"><fmt:message bundle="${lang}" key="ticket"/></span></a>
                            </li>
                            <li class="nav-item">
                                <a href="javascript:void();" data-target="#edit" data-toggle="pill" class="nav-link"><i class="icon-user"></i> <span class="hidden-xs"><fmt:message bundle="${lang}" key="details"/></span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="active" id="ticket">
                                            <div class="input-group" style="margin-bottom: 20px">
                                                <c:forEach items="${products}" var="p">
                                                    <div class="buil pos__ticket box p-1 mt-1" hidden="true" id="hide${p.productId}" style="height: 30px" style="height: 30px"  data-toggle="modal" data-target="#add-item-modal">
                                                        <ul>
                                                            <li><a href="javascript:;">${p.productName}</a></li>
                                                            <li><a href="javascript:;" style="padding: 0px 40px">x1</a></li>
                                                            <li><a href="javascript:;"></a>$ ${p.productPrice}</li>                                                      
                                                        </ul>
                                                    </div>
                                                </c:forEach>
                                                <div id="ticket" class="buil pos__ticket box p-1 mt-1" style="height: 30px" data-toggle="modal" data-target="#add-item-modal">
                                                    <ul>
                                                        <li><a href="javascript:;"></a></li>
                                                        <li><a href="javascript:;"></a></li>
                                                        <li><a href="javascript:;"></a></li>                                                        
                                                    </ul>
                                                </div>
                                                <div class="buil pos__ticket box p-1 mt-1" style="height: 30px" data-toggle="modal" data-target="#add-item-modal">
                                                    <ul>
                                                        <li><a href="javascript:;">Spaghetti Fettucine</a></li>
                                                        <li><a href="javascript:;">x1</a></li>
                                                        <li><a href="javascript:;">$112</a></li>                                                        
                                                    </ul>
                                                </div>
                                                <div class="buil pos__ticket box p-1 mt-1" style="height: 30px"  data-toggle="modal" data-target="#add-item-modal">
                                                    <ul>
                                                        <li><a href="javascript:;">Spaghetti</a></li>
                                                        <li><a href="javascript:;">x1</a></li>
                                                        <li><a href="javascript:;">$112</a></li>                                                        
                                                    </ul>
                                                </div>
                                                <div class="buil pos__ticket box p-1 mt-1" style="height: 30px"  data-toggle="modal" data-target="#add-item-modal">
                                                    <ul>
                                                        <li><a href="javascript:;">Spaghetti</a></li>
                                                        <li><a href="javascript:;">x1</a></li>
                                                        <li><a href="javascript:;">$112</a></li>                                                        
                                                    </ul>
                                                </div> 
                                                <div class="buil pos__ticket box p-1 mt-1" style="height: 30px"  data-toggle="modal" data-target="#add-item-modal">
                                                    <ul>
                                                        <li><a href="javascript:;">Spaghetti</a></li>
                                                        <li><a href="javascript:;">x1</a></li>
                                                        <li><a href="javascript:;">$112</a></li>                                                        
                                                    </ul>
                                                </div> 
                                            </div>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Use coupon code...">
                                                <div class="input-group-append">
                                                    <button class="btn btn-light" type="button">Apply</button>
                                                </div>
                                            </div>
                                            <div class="flex mt-3">
                                                <div class="sum">
                                                    <span style="padding-right: 180px;padding-left: 5px">Subtotal</span>
                                                    <span>$250</span>
                                                </div>
                                                <div class="sum">
                                                    <span style="padding-right: 180px;padding-left: 5px">Discount</span>
                                                    <span>-$20</span>                                                   
                                                </div>
                                                <div class="sum">
                                                    <span style="padding-right: 223px;padding-left: 5px">Tax</span>
                                                    <span>15%</span>

                                                </div>
                                                <div class="sum">
                                                    <span style="padding-right: 180px;padding-left: 5px">Charge</span>
                                                    <span>$220%</span>
                                                </div>
                                            </div>
                                            <div class="flex mt-3" style="text-align: center">
                                                <button class="btn btn-light waves-effect waves-light m-1">Clear Items</button>
                                                <button class="btn btn-info waves-effect waves-light m-1">Charge</button>
                                            </div>
                                        </div>
                                    </div>                                   
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="modal" id="add-item-modal">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">New Order</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <div class="input-group bootstrap-touchspin">                                
                                                                <span class="input-group-text bootstrap-touchspin-prefix" style="display: none;"></span>
                                                                <input id="demo3_21" type="text" value="1" name="demo3_21" class="form-control" style="display: block;">
                                                                <span class="input-group-text bootstrap-touchspin-postfix" style="display: none;"></span>                                    
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Color</label>
                                                            <select class="form-control single-select">
                                                                <option style="background-color: yellowgreen">Mau Xanh</option>
                                                                <option style="background-color: yellowgreen">Mau Do</option>
                                                                <option style="background-color: yellowgreen">Mau Trang</option>
                                                                <option style="background-color: yellowgreen">Mau Vang</option>
                                                                <option style="background-color: yellowgreen">Mau Huong</option>
                                                            </select>
                                                        </div>                                                      
                                                        <div class="form-group">
                                                            <label>Size</label>
                                                            <select class="form-control single-select" >
                                                                <option style="background-color: yellowgreen">35</option>
                                                                <option style="background-color: yellowgreen">36</option>
                                                                <option style="background-color: yellowgreen">37</option>
                                                                <option style="background-color: yellowgreen">38</option>
                                                                <option style="background-color: yellowgreen">39</option>
                                                            </select>

                                                        </div>
                                                        <hr>
                                                        <div class="form-group">
                                                            <button type="button" data-dismiss="modal" class="btn btn-white waves-effect waves-light m-1" >Cancel</button>
                                                            <button type="submit" style="margin-right: 20px" class="btn btn-info waves-effect waves-light m-1">Apply</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>                          
                            <div class="tab-pane" id="edit">
                                <div class="tab-content__pane" id="details">
                                    <div class="detail">
                                        <div class="form-group">
                                            <div class="">
                                                <div class="text-gray-600">Time</div>
                                                <span style="float: right; margin-right: 5px;"><i class="zmdi zmdi-time"></i></span>
                                                <div>02/06/20 02:10 PM</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="">                                          
                                                <div class="text-gray-600">Customer Name</div>
                                                <span style="float: right; margin-right: 5px"><i class="fa fa-user-o"></i></span>
                                                <div>Keanu Reeves</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="">
                                                <div class="text-gray-600">Email</div>
                                                <span style="float: right; margin-right: 5px"><i class="zmdi zmdi-email"></i></span>
                                                <div>vu@gmail.com</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="">
                                                <div class="text-gray-600">Phone Number</div>
                                                <span style="float: right; margin-right: 5px"><i class="zmdi zmdi-account-box-phone"></i></span>
                                                <div>0978234200</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="">
                                                <div class="text-gray-600">Address</div>
                                                <span style="float: right; margin-right: 5px"><i class="fa fa-table"></i></span>
                                                <div>TP.HCM</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- END: New Order Modal -->
            <!-- BEGIN: Add Item Modal -->
        </div>

        <!-- END: Add Item Modal -->               
    </div>
    <!--start overlay-->
    <div class="overlay toggle-menu"></div>
    <!--end overlay-->
</div>
<!-- End container-fluid-->
</div><!--End content-wrapper-->
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/jquery.validate.js"></script>
<!--Select Plugins Js-->
<script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/select2/js/select2.min.js"></script>
<!--Bootstrap Touchspin Js-->
<script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.js"></script>
<script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-touchspin/js/bootstrap-touchspin-script.js"></script>
<script >
                                            $(document).ready(function () {
                                                $('.single-select').select2();
                                            });
</script>
<script>

   
</script>