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
                    <li class="breadcrumb-item"><a href="${links}/file/customer/viewall/">Customer</a></li>
                    <li class="breadcrumb-item"><a href="#">Create</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="createacustomer"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/customer/create" commandName="customer" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerFirstName"><fmt:message bundle="${lang}" key="firstname"/></form:label>
                                        <fmt:message bundle='${lang}' key='firstnameinput' var="firstname"/>
                                        <div class="input-group">
                                            <form:input  path="customerFirstName" class="form-control" placeholder="${firstname}"  />                                            
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerLastName"><fmt:message bundle="${lang}" key="lastname"/></form:label>
                                        <fmt:message bundle='${lang}' key='lastnameinput' var="lastname"/>

                                        <div class="input-group">
                                            <form:input path="customerLastName" class="form-control" placeholder="${lastname}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerAddress"><fmt:message bundle="${lang}" key="address"/></form:label>
                                        <fmt:message bundle='${lang}' key='addressinput' var="address"/>

                                        <div class="input-group">
                                            <form:input path="customerAddress" class="form-control" placeholder="${address}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerMobile"><fmt:message bundle="${lang}" key="mobile"/></form:label>
                                        <fmt:message bundle='${lang}' key='mobileinput' var="mobile"/>

                                        <div class="input-group">
                                            <form:input  path="customerMobile" class="form-control" placeholder="${mobile}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerEmail"><fmt:message bundle="${lang}" key="email"/></form:label>
                                        <fmt:message bundle='${lang}' key='emailinput' var="email"/>

                                        <div class="input-group">
                                            <form:input path="customerEmail" class="form-control" placeholder="${email}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerPicture"><fmt:message bundle="${lang}" key="picture"/></form:label>
                                        <fmt:message bundle='${lang}' key='pictureinput' var="picture"/>
                                        <div class="input-group">
                                            <img src="${links}/images/customer/adminnguyenhai.jpg" id="output" height="250" width="250" />
                                            <br/><input type="file" name="file" accept=".png, .jpg, .jpeg" onchange="loadFile(event)"/>

                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerGender"><fmt:message bundle="${lang}" key="gender"/></form:label>

                                        <fmt:message bundle='${lang}' key='male' var="male"/>
                                        <fmt:message bundle='${lang}' key='female' var="female"/>
                                        <div class="input-group">
                                            <form:radiobutton label="${male}" checked="true" value="1" path="customerGender" />
                                            <form:radiobutton label="${female}" value="2" path="customerGender"/>                   

                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="customerBirthday"><fmt:message bundle="${lang}" key="birth"/></form:label>
                                        <fmt:message bundle='${lang}' key='birthinput' var="birth"/>
                                        <div class="input-group">
                                            <form:input type="date" path="customerBirthday" class="form-control" placeholder="${birth}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>         
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="provinceId"><fmt:message bundle="${lang}" key="districtid"/></form:label>                                        
                                            <div class="input-group">
                                            <fmt:message bundle='${lang}' key='selectOne' var="selectOne"/>
                                            <form:select path="provinceId" class="form-control">
                                                <form:option label="${selectOne}" value="0"/>
                                                <form:options items="${provinces}" itemLabel="provinceName" itemValue="provinceId"/>
                                            </form:select>

                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="districtId"><fmt:message bundle="${lang}" key="districtid"/></form:label>                                        
                                            <div class="input-group">
                                            <form:select path="districtId" class="form-control">
                                                <form:option label="${selectOne}" value="0"/>
                                                <form:options items="${districts}" itemLabel="districtName" itemValue="districtId"/>
                                            </form:select>

                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div>
                                    <form:input path="customerId" class="form-control" hidden="true"  />
                                </div>

                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/customer/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
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

                                                $("#provinceId").change(function () {
                                                    var idsearch = $("#provinceId").val();
                                                    $.ajax({
                                                        type: "GET",
                                                        contentType: "application/json",
                                                        url: "${links}/file/customer/searchprovince",
                                                        data: {
                                                            ids: idsearch
                                                        },
                                                        dataType: 'json',
                                                        timeout: 100000,
                                                        success: function (data) {
                                                            console.log("SUCCESS: ", data);
                                                            $("#districtId").empty();
                                                            $("#districtId").append("<option value='0'>${selectOne}</option>");
                                                            $.each(data, function (Create, row) {
//$("#districtId").append("<option value = 123>4566666</option>");
                                                                $("#districtId").append("<option value = '" + row.districtId + "'>" + row.districtName + "</option>");
                                                            });

                                                        },
                                                        error: function (e) {
                                                            $("#districtId").append("<option value = 123>456</option>");
                                                            console.log("ERROR: ", e);
                                                        }
                                                    });
                                                });
                                                var loadFile = function (event) {
                                                    var reader = new FileReader();
                                                    reader.onload = function () {
                                                        var output = document.getElementById('output');
                                                        output.src = reader.result;
                                                    };
                                                    reader.readAsDataURL(event.target.files[0]);
                                                };


                                                jQuery.validator.addMethod("lettersonlys", function (value, element) {
                                                    return this.optional(element) || /^[a-zA-Z áàảãạắằẳẵặăấầẩẫậâđéèẻẽẹềếểễệêíìỉĩịòóỏõọồốổỗộôờớởỡợơùúủũụừứửữựưỳýỷỹỵ]*$/.test(value);
                                                }, " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)");
                                                jQuery.validator.addMethod("decimal", function (value, element) {
                                                    return this.optional(element) || /^\d*(\.\d{0,2})?$/.test(value);
                                                }, " (<fmt:message bundle='${lang}' key='2sothapphan'/>)");

                                                $(document).ready(function () {
                                                    $("#customer").validate({
                                                        rules: {
                                                            customerFirstName: {
                                                                required: true,
                                                                minlength: 2,
                                                                maxlength: 20,
                                                                lettersonlys: true,
                                                            },
                                                            customerLastName: {
                                                                required: true,
                                                                minlength: 2,
                                                                maxlength: 20,
                                                                lettersonlys: true,
                                                            },
                                                            customerAddress: {
                                                                required: true,
                                                                minlength: 2,
                                                                maxlength: 100,
//notEqualTo:"#customerAddress"
                                                            },
                                                            customerMobile: {
                                                                required: true,
                                                                minlength: 10,
                                                                maxlength: 12
                                                            },
                                                            customerEmail: {
                                                                required: true,
                                                                email: true
                                                            },
                                                            customerBirthday: {
                                                                required: true,
                                                            },
                                                            provinceId: {
                                                                min: 1,
                                                            },
                                                            districtId: {
                                                                min: 1,
                                                            }

                                                        },
                                                        messages: {
                                                            customerFirstName: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                                minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                                                                maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                                                                lettersonlys: " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)",
                                                            },
                                                            customerLastName: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                                minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                                                                maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                                                                lettersonlys: " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)",
                                                            },
                                                            customerAddress: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                                minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                                                                maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 100 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
//notEqualTo:"#customerAddress"
                                                            },
                                                            customerMobile: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                                minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 10 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                                                                maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 12 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                                                            },
                                                            customerEmail: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                                email: " (<fmt:message bundle='${lang}' key='validEmail'/>)",
                                                            },
                                                            customerBirthday: {
                                                                required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                                                            },
                                                            provinceId: {
                                                                min: " (<fmt:message bundle='${lang}' key='requiredselect'/>)",
                                                            },
                                                            districtId: {
                                                                min: " (<fmt:message bundle='${lang}' key='requiredselect'/>)",
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
</script>


