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
                <h4 class="page-title"><fmt:message bundle="${lang}" key="create"/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${links}/file/membership/viewall/">Membership</a></li>
                    <li class="breadcrumb-item"><a href="#">Create</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="createamembership"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/membership/create" commandName="membership" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        
                                        <fmt:message bundle='${lang}' key='idinput' var="id" />
                                        <div class="input-group">
                                            <form:input  path="membershipId" class="form-control" placeholder="${id}" hidden="true" />                                            
                                            
                                        </div>
                                    </div>

                                </div>    
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="membershipDetail"><fmt:message bundle="${lang}" key="detail"/></form:label>
                                        <fmt:message bundle='${lang}' key='detailinput' var="detail"/>

                                        <div class="input-group">
                                            <form:input path="membershipDetail" class="form-control" placeholder="${detail}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="membershipTotal"><fmt:message bundle="${lang}" key="total"/></form:label>
                                        <fmt:message bundle='${lang}' key='totalinput' var="total"/>

                                        <div class="input-group">
                                            <form:input path="membershipTotal" class="form-control" placeholder="${total}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="membershipPercentOut"><fmt:message bundle="${lang}" key="percentOut"/></form:label>
                                        <fmt:message bundle='${lang}' key='percentOutinput' var="total"/>

                                        <div class="input-group">
                                            <form:input path="membershipPercentOut" class="form-control" placeholder="${percentOut}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/membership/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
                                        <input  type="submit" style="width: 150px" value="<fmt:message bundle="${lang}" key="create"/>" id="submit" class="btn btn-outline-info  m-1">
                                    </div>
                                </div>                               
                            </div> 
                        </form:form>
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

<script type="text/javascript">

    
</script>


