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
                    <li class="breadcrumb-item"><a href="${links}/file/voucher/viewall/">Discount</a></li>
                    <li class="breadcrumb-item"><a href="#">Detail</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-zoom-in" ></span> <fmt:message bundle="${lang}" key="detail"/> </div>

                    </div>

                    <div class="card-body">

                        
                            <div class="row fontawesome-icon-list">

                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="type"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">
                                    <fmt:message bundle='${lang}' key='percent' var="percent"/>
                                    <fmt:message bundle='${lang}' key='dollar' var="dollar"/>
                                    : ${voucher.voucherRole==1?percent:dollar}
                                </div>

                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="name"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherName}
                                </div> 
                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="keyvoucher"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherKey}
                                </div> 
                                 

                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="valuein"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : 
                                        ${voucher.voucherCash}                                         
                                        ${voucher.voucherRole==1?"%":"$"}                                        
                                </div> 
                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="minofcash"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherMin}
                                </div> 
                                 <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="maxofvalue"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherMax}
                                </div> 
                                
                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="description"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherDescription}
                                </div> 

                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="startdate"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10"> 
                                    <fmt:formatDate var="voucherStart" value="${voucher.voucherStartDate}" pattern="dd/MM/yyyy"/>
                                    : ${voucherStart}
                                </div>

                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="enddate"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10"> 
                                    <fmt:formatDate var="voucherEnd" value="${voucher.voucherEndDate}" pattern="dd/MM/yyyy"/>
                                    : ${voucherEnd}
                                </div>
                                 <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="limit"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherLimit}
                                </div>
                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="used"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        : ${voucher.voucherUsed}
                                </div> 
                                <div class="fa-hover col-lg-6 col-xl-2">
                                    <label><fmt:message bundle="${lang}" key="process"/></label>                                        
                                    </div>
                                    <div class="fa-hover col-lg-6 col-xl-10">                                    
                                        <jsp:useBean id="now" class="java.util.Date"/>
                                        <fmt:formatDate var="end" value="${voucher.voucherEndDate}" pattern="yyyy/MM/dd"/>
                                        <fmt:formatDate var="nown" value="${now}" pattern="yyyy/MM/dd"/>
                                        : <span style="color: red"><c:if test="${end lt nown ||voucher.voucherLimit==voucher.voucherUsed}"> <fmt:message bundle="${lang}" key="end"/></c:if></span>                                        
                                </div> 
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/voucher/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>  
                                        <a class="btn btn-outline-success m-1" style="width: 150px" href="${links}/file/voucher/editvoucher/${voucher.voucherId}"> <fmt:message bundle="${lang}" key="edit"/></a>                                        
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
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/jquery.validate.js"></script>
