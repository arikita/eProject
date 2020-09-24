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
<style>

</style>


<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <!-- Tieu de thiet ke o day -->
                    <h5 class="title" style="text-transform: uppercase"><fmt:message bundle="${lang}" key="create"/></h5>
                    <p class="category" style="text-transform: none"><fmt:message bundle="${lang}" key="create"/>  <fmt:message bundle="${lang}" key="a"/> <a style="color: red"><fmt:message bundle="${lang}" key="book"/></a></p>
                </div>
                <div class="card-body all-icons">
                    <!-- Thiet ke body o day -->

                    <form:form action="${links}/file/book/create" commandName="book" method="post" >
                        <div class="row">
                            <div class="col-md-7 pr-1">
                                <div class="form-group">
                                    <form:label path="tile"><fmt:message bundle="${lang}" key="title"/></form:label>
                                    <fmt:message bundle='${lang}' key='titleinput' var="title"/>
                                                       
                                    <div class="input-group">
                                       <form:input path="tile" class="form-control" placeholder="${title}"  /> 
                                        <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                    </div>
                                </div>

                            </div>    
                            <div class="col-md-7 pr-1">
                                <div class="form-group">
                                    <form:label path="price"><fmt:message bundle="${lang}" key="price"/></form:label>
                                    <fmt:message bundle='${lang}' key='priceinput' var="price"/>
                                    <div class="input-group">
                                        <form:input type="number" path="price" class="form-control" placeholder="${price}"  />                    
                                        <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 pr-1">
                                <div class="form-group">
                                    <form:label path="name"><fmt:message bundle="${lang}" key="name"/></form:label>
                                    <fmt:message bundle='${lang}' key='nameinput' var="name"/>
                                    <div class="input-group">
                                        <form:input type="date" path="name" class="form-control" placeholder="${name}"  />                    

                                        <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>

                                    </div>
                                </div>                                

                            </div>
                            <div>
                                <form:input path="id"  class="form-control" hidden="true"  />
                                <form:input path="role" value="1" class="form-control" hidden="true"  />
                            </div>
                            <div class="col-md-7 pr-1">
                                <div class="form-group">
                                    <a class="btn btn-round btn-default" href="${links}/file/book/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
                                    <input  type="submit" value="<fmt:message bundle="${lang}" key="create"/>" id="submit" class="btn btn-round btn-primary">
                                </div>
                            </div>
                        </div> 
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/core/jquery.min.js"></script>--%>
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSSADMIN/jquery.validate.js"></script>

<script type="text/javascript">

    jQuery.validator.addMethod("lettersonlys", function (value, element) {
        return this.optional(element) || /^[a-zA-Z áàảãạắằẳẵặăấầẩẫậâđéèẻẽẹềếểễệêíìỉĩịòóỏõọồốổỗộôờớởỡợơùúủũụừứửữựưỳýỷỹỵ]*$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)");
    jQuery.validator.addMethod("decimal", function (value, element) {
        return this.optional(element) || /^\d*(\.\d{0,2})?$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='2sothapphan'/>)");

    $(document).ready(function () {
        $("#book").validate({
            rules: {
                tile: {
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                    lettersonlys: true,
                },
                price: {
                    required: true,
                    min: 100,
                    max: 500000000000,
                    number: true,
                    decimal: true,
                },
                name: {
                    required: true,
                    //minlength: 2,
                    //maxlength: 10,
                    //lettersonlys: true
                }
            },
            messages: {
                tile: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 10 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                },
                price: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    min: " (<fmt:message bundle='${lang}' key='requiredmin'/> 100)",
                    max: " (<fmt:message bundle='${lang}' key='requiredmax'/> 500)",
                },
                name: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: "(<fmt:message bundle='${lang}' key='requiredmaxleng'/> 10 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",

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
    }
    );

</script>
