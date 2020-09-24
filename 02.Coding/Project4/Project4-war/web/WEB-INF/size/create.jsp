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
                <h4 class="page-title">Data Tables</h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${links}/file/size/viewall/">Size</a></li>
                    <li class="breadcrumb-item"><a href="#">Create</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="createsize"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/size/create" commandName="size" method="post">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">

                                        <fmt:message bundle='${lang}' key='idinput' var="id" />
                                        <div class="input-group">
                                            <form:input  path="sizeId" class="form-control" placeholder="${id}" hidden="true" />                                            

                                        </div>
                                    </div>

                                </div>    
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="sizeSize"><fmt:message bundle="${lang}" key="size"/></form:label>
                                        <fmt:message bundle='${lang}' key='sizeinput' var="size"/>

                                        <div class="input-group">
                                            <form:input type="number" path="sizeSize" class="form-control" placeholder="${size}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div>


                                </div>

                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/size/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
                                        <input  type="submit" onclick="return  confirm('are you ok')" style="width: 150px" value="<fmt:message bundle="${lang}" key="create"/>" id="submit" class="btn btn-outline-info  m-1">
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
    $("#sizeSize").change(function () {
        
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "${links}/file/size/searchprovince",
            data : {
                ids: $("#sizeSize").val()
            },
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
            console.log("SUCCESS: ", data);
            if (data != null) {
                
		//kiem tra data co bi trung voi du lieu cu ko                
                $.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != ''+data;
                }, 'This two elements are the same, please change it.');
                
            } else {
                
		$.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != '';
                }, 'This two elements are the same, please change it.');
             }
            },
        error : function(e) {
	console.log("ERROR: ", e);
        
		$.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != '';
                }, 'This two elements are the same, please change it.');
        }
	});
    });
            $(document).ready(function () {
                $("#size").validate({
                    rules: {
                        sizeSize: {
                            required: true,
                            min: 20,
                            max: 50,
                            notEqualTo: "#sizeId"
                        },
                    },
                    messages: {
                        sizeSize: {
                            required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                            min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 20)",
                            max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 50)",
                            notEqualTo:" (<fmt:message bundle='${lang}' key='doubleData'/>)",
                        },
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
            });
</script>


