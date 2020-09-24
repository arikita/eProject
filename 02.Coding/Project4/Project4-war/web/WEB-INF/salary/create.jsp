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
                    <li class="breadcrumb-item"><a href="${links}/file/salary/viewall/">Salary</a></li>
                    <li class="breadcrumb-item"><a href="#">Create</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="createasalary"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/salary/create" commandName="salary" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">                     
                                        <fmt:message bundle='${lang}' key='idinput' var="id" />
                                        <div class="input-group">
                                            <form:input  path="salaryId" class="form-control" placeholder="${id}" hidden="true" />                                                                                        
                                        </div>
                                    </div>
                                </div>    
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryWorkingDay"><fmt:message bundle="${lang}" key="workingDay"/></form:label>
                                        <fmt:message bundle='${lang}' key='workingDayinput' var="workingDay"/>

                                        <div class="input-group">
                                            <form:input path="salaryWorkingDay" class="form-control" placeholder="${workingDay}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryOvertime"><fmt:message bundle="${lang}" key="overtime"/></form:label>
                                        <fmt:message bundle='${lang}' key='overtimeinput' var="overtime"/>

                                        <div class="input-group">
                                            <form:input path="salaryOvertime" class="form-control" placeholder="${overtime}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryDayOff"><fmt:message bundle="${lang}" key="dayOff"/></form:label>
                                        <fmt:message bundle='${lang}' key='dayOffinput' var="dayOff"/>

                                        <div class="input-group">
                                            <form:input path="salaryDayOff" class="form-control" placeholder="${dayOff}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryHoliday"><fmt:message bundle="${lang}" key="holiday"/></form:label>
                                        <fmt:message bundle='${lang}' key='holidayinput' var="holiday"/>

                                        <div class="input-group">
                                            <form:input path="salaryHoliday" class="form-control" placeholder="${holiday}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryAllowance"><fmt:message bundle="${lang}" key="allowance"/></form:label>
                                        <fmt:message bundle='${lang}' key='allowanceinput' var="allowance"/>

                                        <div class="input-group">
                                            <form:input path="salaryAllowance" class="form-control" placeholder="${allowance}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryBonus"><fmt:message bundle="${lang}" key="bonus"/></form:label>
                                        <fmt:message bundle='${lang}' key='bonusinput' var="bonus"/>

                                        <div class="input-group">
                                            <form:input path="salaryBonus" class="form-control" placeholder="${bonus}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryOther"><fmt:message bundle="${lang}" key="other"/></form:label>
                                        <fmt:message bundle='${lang}' key='otherinput' var="other"/>

                                        <div class="input-group">
                                            <form:input path="salaryOther" class="form-control" placeholder="${other}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryOtherDetail"><fmt:message bundle="${lang}" key="otherDetail"/></form:label>
                                        <fmt:message bundle='${lang}' key='otherDetailinput' var="otherDetail"/>

                                        <div class="input-group">
                                            <form:input path="salaryOtherDetail" class="form-control" placeholder="${otherDetail}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryReduce"><fmt:message bundle="${lang}" key="reduce"/></form:label>
                                        <fmt:message bundle='${lang}' key='reduceinput' var="reduce"/>

                                        <div class="input-group">
                                            <form:input path="salaryReduce" class="form-control" placeholder="${reduce}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="salaryReduceDetail"><fmt:message bundle="${lang}" key="reduceDetail"/></form:label>
                                        <fmt:message bundle='${lang}' key='reduceDetailinput' var="reduceDetail"/>

                                        <div class="input-group">
                                            <form:input path="salaryDayOff" class="form-control" placeholder="${reduceDetail}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/salary/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
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


