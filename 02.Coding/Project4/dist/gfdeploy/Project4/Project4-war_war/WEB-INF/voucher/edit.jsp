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
                <h4 class="page-title"><fmt:message bundle="${lang}" key="edit"/></h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${links}/file/voucher/viewall/">Voucher</a></li>
                    <li class="breadcrumb-item"><a href="#">Edit</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="editavoucher"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/voucher/edit" commandName="voucher" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherRole"><fmt:message bundle="${lang}" key="type"/></form:label>                                        
                                            <div class="input-group">
                                            <fmt:message bundle='${lang}' key='percent' var="percent"/>
                                            <fmt:message bundle='${lang}' key='dollar' var="dollar"/>
                                            <fmt:message bundle='${lang}' key='selectOne' var="selectOne"/>
                                            <form:select  path="voucherRole" class="form-control" >
                                                <form:option label="${selectOne}" value="0"/>
                                                <form:option label=" ${percent}" value="1" />
                                                <form:option label=" ${dollar}"  value="2"/>                
                                            </form:select>                                            
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>

                                </div>    
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherName"><fmt:message bundle="${lang}" key="name"/></form:label>
                                        <fmt:message bundle='${lang}' key='nameinput' var="name"/>

                                        <div class="input-group">
                                            <form:input path="voucherName" class="form-control" placeholder="${name}"  />  
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div> 
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherKey"><fmt:message bundle="${lang}" key="key"/></form:label>
                                        <fmt:message bundle='${lang}' key='keyinput' var="key"/>

                                        <div class="input-group">
                                            <form:input path="voucherKey" class="form-control" placeholder="${key}"  />  
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div> 
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherCash"><fmt:message bundle="${lang}" key="valuein"/></form:label>
                                        <fmt:message bundle='${lang}' key='valueinput' var="valueinput"/>
                                        <div class="input-group">
                                            <form:input type="number" path="voucherCash" class="form-control" placeholder="${valueinput}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherDescription"><fmt:message bundle="${lang}" key="description"/></form:label>
                                        <fmt:message bundle='${lang}' key='descriptioninput' var="description"/>

                                        <div class="input-group">
                                            <form:input  path="voucherDescription" class="form-control" placeholder="${description}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>                                            
                                        </div>
                                    </div>
                                </div>
                                   <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherMin"><fmt:message bundle="${lang}" key="minofcash"/></form:label>
                                        <fmt:message bundle='${lang}' key='mincashinput' var="mincashinput"/>
                                        <div class="input-group">
                                            <form:input type="number" path="voucherMin" class="form-control" placeholder="${mincashinput}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>   
                                <div class="col-md-7 pr-1" id="voucherm">
                                    <div class="form-group">
                                        <form:label path="voucherMax"><fmt:message bundle="${lang}" key="maxofvalue"/></form:label>
                                        <fmt:message bundle='${lang}' key='maxvalueinput' var="maxvalueinput"/>
                                        <div class="input-group">
                                            <form:input type="number" path="voucherMax" class="form-control" placeholder="${maxvalueinput}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div> 
                                            <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherLimit"><fmt:message bundle="${lang}" key="limit"/></form:label>
                                        <fmt:message bundle='${lang}' key='limitinput' var="limitinput"/>
                                        <div class="input-group">
                                            <form:input type="number" path="voucherLimit" class="form-control" placeholder="${limitinput}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherStartDate"><fmt:message bundle="${lang}" key="startdate"/></form:label>                                       
                                            <div class="input-group">
                                            <form:input type="date" path="voucherStartDate" class="form-control" />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="voucherEndDate"><fmt:message bundle="${lang}" key="enddate"/></form:label>                                       
                                            <div class="input-group">
                                            <form:input type="date" path="voucherEndDate" class="form-control"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div>
                                    <form:input path="voucherId" class="form-control" hidden="true"  />
                                    <input id="check" hidden="true"> 
                                </div>

                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/voucher/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
                                        <input  type="submit" style="width: 150px" value="<fmt:message bundle="${lang}" key="edit"/>" id="submit" class="btn btn-outline-info  m-1">
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
    var isAfterStartDate = function (startDateStr, endDateStr) {
        var inDate = new Date(startDateStr),
                eDate = new Date(endDateStr);

        if (inDate >= eDate) {
            return false;
        }
        return true;
    };
    jQuery.validator.addMethod("isAfterStartDate", function (value, element) {

        return isAfterStartDate($('#voucherStartDate').val(), value);
    }, " (<fmt:message bundle='${lang}' key='enddatetostartdate'/>)");
    jQuery.validator.addMethod("isAfterNowDate", function (value, element) {
        var today = new Date();
        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
        return isAfterStartDate(date, value);
    }, " (<fmt:message bundle='${lang}' key='startdatetonow'/>)");
    $.validator.addMethod("notEqualTo", function (value, element, param) {
        return this.optional(element) || value.toUpperCase() !== $.trim($(param).val().toUpperCase());
    }, " (<fmt:message bundle='${lang}' key='doubleData'/>)");
    jQuery.validator.addMethod("lettersonlys", function (value, element) {
        return this.optional(element) || /^[a-zA-Z áàảãạắằẳẵặăấầẩẫậâđéèẻẽẹềếểễệêíìỉĩịòóỏõọồốổỗộôờớởỡợơùúủũụừứửữựưỳýỷỹỵ]*$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)");
    jQuery.validator.addMethod("decimal", function (value, element) {
        return this.optional(element) || /^\d*(\.\d{0,2})?$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='twodecimal'/>)");
    jQuery.validator.addMethod("numbernodecimal", function (value, element) {
        return this.optional(element) || /^\d{0,100000}$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='numbernotdecimal'/>)");

    $(document).ready(function () {
        $("#voucher").validate({
            rules: {
                voucherRole: {
                    min: 1,
                },
                voucherName: {
                    required: true,
                    minlength: 2,
                    maxlength: 45,
                    lettersonlys: true,
                },
                voucherKey: {
                    required: true,
                    minlength: 6,
                    maxlength: 20,
                    notEqualTo:"#check",
                },
                voucherCash: {
                    required: true,
                    min: 0.5,
                    max: 100,
                    decimal: true
                },
                voucherMin: {
                    required: true,
                    min: 0.5,
                    max: 1000,
                    number:true,
                    decimal: true
                },
                 voucherMax: {
                    required: true,
                    min: 0.5,
                    max: 1000,
                    number:true,
                    decimal: true
                },
                voucherLimit: {
                    required: true,
                    min: 1,
                    max: 1000,
                    number:true,
                    numbernodecimal: true
                },
                voucherDescription: {
                    required: true,
                    minlength: 2,
                    maxlength: 150,
                },
                voucherStartDate: {
                    required: true,
                    //isAfterNowDate: true
                },
                voucherEndDate: {
                    required: true,
                    isAfterStartDate: true
                }

            },
            messages: {
                voucherRole: {
                    min: " (<fmt:message bundle='${lang}' key='requiredselect'/>)",
                },
                voucherName: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 45 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                    lettersonlys: " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)",
                },
                voucherKey: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 6 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                },
                voucherCash: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 0.5)",
                    max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 100)",
                    decimal: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                },
                voucherMin: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 0.5)",
                    max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 1000)",
                    number:" (<fmt:message bundle='${lang}' key='numbervalid'/>)",
                    
                },
                 voucherMax: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 0.5)",
                    max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 1000)",
                    number:" (<fmt:message bundle='${lang}' key='numbervalid'/>)",
                    
                },
                voucherLimit: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                   min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 1)",
                    max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 1000)",
                    number:" (<fmt:message bundle='${lang}' key='numbervalid'/>)",
                    numbernodecimal: " (<fmt:message bundle='${lang}' key='numbernodecimal'/>)",
                },
                voucherDescription: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 150 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                },
                voucherStartDate: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                   
                },
                voucherEndDate: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    
                }           
                
            },
            errorElement: "em",
            errorPlacement: function (error, element) {
                // Add the `help-block` class to the error element
                error.addClass("help-block");
                // Add `has-feedback` class to the parent div.form-group
                // in order to add icons to inputs
                element.parents(".col-sm-5").addClass("has-feedback");
                if (element.prop("type") === "checkbox") {
                    error.insertAfter(element.parent("label"));
                } else {
                    error.insertAfter(element);
                }

                // Append error within linked label
                $(element).closest("form")
                        .find("label[for= '" + element.attr("id") + "']")
                        .append(error);
            },

            highlight: function (element, errorClass, validClass) {
                $(element).addClass("has-error").removeClass("has-success");
                $(element).next("span").addClass("has-error-spin").removeClass("has-success-spin");
                $(element).next().find('i').addClass("fa fa-spinner fa-spin").removeClass("icon icon-like color-green");
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).addClass("has-success").removeClass("has-error");
                $(element).next("span").addClass("has-success-spin").removeClass("has-error-spin");
                $(element).next().find('i').addClass("icon icon-like color-green").removeClass("fa fa-spinner fa-spin");
            }
        });
    }
    );
    $("#voucherRole").change(function () {
        if($("#voucherRole").val()==2){
           $("#voucherm").hide();
           $("#voucherMax").val(100);
        }
        if($("#voucherRole").val()==1){
           $("#voucherm").show();
           $("#voucherMax").val(null);
        }
    });
    $("#voucherKey").change(function () {
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "${links}/file/voucher/searchedit",
            data: {
                ids: $("#voucherId").val(),
                texts: $("#voucherKey").val(),
                //username: 'admin'
            },
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                console.log("SUCCESS: ", data);
               $("#check").val(data);
            },
            error: function (e) {
                console.log("ERROR: ", e);
               
            }
        });

    });
</script>


