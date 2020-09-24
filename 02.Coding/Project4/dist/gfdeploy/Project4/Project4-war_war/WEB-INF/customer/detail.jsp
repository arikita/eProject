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
                <h4 class="page-title"><fmt:message bundle="${lang}" key="detail"/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${links}/file/customer/viewall/">Customer</a></li>
                    <li class="breadcrumb-item"><a href="#">Detail</a></li>
                </ol>
            </div>
        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-zoom-in" ></span> <fmt:message bundle="${lang}" key="detail"/></div>
                    </div>
                    <div class="card-body">                        
                        <div class="row fontawesome-icon-list">
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerName"/></label>                                        
                            </div>                            
                            <div class="fa-hover col-lg-6 col-xl-10">                                    
                                :${customer.customerFirstName} 
                                 ${customer.customerLastName}                                          
                            </div>                                 
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerAddress"/></label>                                        
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-10">  
                                : ${customer.customerAddress}
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerMobile"/></label>                                        
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-10">  
                                : ${customer.customerMobile}
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerEmail"/></label>                                        
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-10">  
                                : ${customer.customerEmail}
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerPicture"/></label>                                        
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-10">  
                                : ${customer.customerPicture}
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-2">
                                <label><fmt:message bundle="${lang}" key="customerBirthday"/></label>                                        
                            </div>
                            <div class="fa-hover col-lg-6 col-xl-10">
                                <fmt:formatDate var="customerBirthday" value="${customer.customerBirthday}" pattern="dd/MM/yyyy"/>
                                : ${customerBirthday}
                            </div>
                            <div class="col-md-7 pr-1">
                                <div class="form-group">
                                    <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/customer/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>  
                                    <a class="btn btn-outline-success m-1" style="width: 150px" href="${links}/file/customer/editdiscount/${discount.discountId}"> <fmt:message bundle="${lang}" key="edit"/></a>                                         
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div><!-- End Row-->
        <!--start overlay-->
        <div  class="overlay toggle-menu"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->

</div><!--End content-wrapper-->
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>

