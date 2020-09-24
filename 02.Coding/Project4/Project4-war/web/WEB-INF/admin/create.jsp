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
                    <li class="breadcrumb-item"><a href="${links}/file/admin/viewall/">Admin</a></li>
                    <li class="breadcrumb-item"><a href="#">Create</a></li>
                </ol>
            </div>

        </div>
        <!-- End Breadcrumb-->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div><span class="ti-pencil-alt"></span> <fmt:message bundle="${lang}" key="createaadmin"/> </div>

                    </div>

                    <div class="card-body">

                        <form:form action="${links}/file/admin/create" commandName="admin" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminName"><fmt:message bundle="${lang}" key="name"/></form:label>
                                        <fmt:message bundle='${lang}' key='nameinput' var="name"/>
                                        <div class="input-group">
                                            <form:input  path="adminName" class="form-control" placeholder="${name}"  />                                            
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>

                                </div>    
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminEmail"><fmt:message bundle="${lang}" key="email"/></form:label>
                                        <fmt:message bundle='${lang}' key='emailinput' var="email"/>

                                        <div class="input-group">
                                            <form:input path="adminEmail" class="form-control" placeholder="${email}"/>                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminUsername"><fmt:message bundle="${lang}" key="username"/></form:label>
                                        <fmt:message bundle='${lang}' key='usernameinput' var="username"/>

                                        <div class="input-group">
                                            <form:input  path="adminUsername" class="form-control" placeholder="${username}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                            ${adminsearch}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminPassword"><fmt:message bundle="${lang}" key="password"/></form:label>
                                        <fmt:message bundle='${lang}' key='passwordinput' var="password"/><i class="icon-lock icons" id="faspass" onclick="show()"></i> 

                                        <div class="input-group">
                                            <form:password path="adminPassword" class="form-control" placeholder="${password}"  />  
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div> 
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminPasswordConfirm"><fmt:message bundle="${lang}" key="passconfirm"/></form:label>
                                        <fmt:message bundle='${lang}' key='passconfirminput' var="passwordConfirm"/><i class="icon-lock icons" id="faspassconfirm" onclick="show2()"></i>
                                        <div class="input-group">
                                            <form:password path="adminPasswordConfirm" class="form-control" placeholder="${passwordConfirm}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminMobile"><fmt:message bundle="${lang}" key="phone"/></form:label>
                                        <fmt:message bundle='${lang}' key='phoneinput' var="phone"/>
                                        <div class="input-group">
                                            <form:input path="adminMobile" class="form-control" placeholder="${phone}"  />                                
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminPicture"><fmt:message bundle="${lang}" key="picture"/></form:label>
                                        <fmt:message bundle='${lang}' key='pictureinput' var="picture"/>
                                        <div class="input-group">
                                            <img src="${links}/images/adminimage.jpg" id="output" height="250" width="250" />
                                            <br/><input type="file" name="file" accept=".png, .jpg, .jpeg" onchange="loadFile(event)"/>
                                            
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminGender"><fmt:message bundle="${lang}" key="gender"/></form:label>
                                        <fmt:message bundle='${lang}' key='genderinput' var="gender"/>
                                        <fmt:message bundle='${lang}' key='male' var="male"/>
                                        <fmt:message bundle='${lang}' key='female' var="female"/>
                                        <div class="input-group">
                                            <form:radiobutton label="${male}" checked="true" value="1" path="adminGender" />
                                            <form:radiobutton label="${female}" value="2" path="adminGender"/>                   
                                            
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <form:label path="adminBirthday"><fmt:message bundle="${lang}" key="birth"/></form:label>
                                        <fmt:message bundle='${lang}' key='birthinput' var="birth"/>
                                        <div class="input-group">
                                            <form:input type="date" path="adminBirthday" class="form-control" placeholder="${birth}"  />                    
                                            <span class="input-group-text" ><i class="fa fa-spinner fa-spin"></i></span>
                                        </div>
                                    </div>  
                                </div>
                                <div>
                                    <form:input path="adminId" class="form-control" hidden="true"  />
                                    <form:input path="adminRole" class="form-control" hidden="true"  />
                                    <form:input path="adminRoleAll" class="form-control" hidden="true"  />
                                    <form:input path="adminLanguage" class="form-control" hidden="true"  />

                                </div>
                                
                                <div class="col-md-7 pr-1">
                                    <div class="form-group">
                                        <a class="btn btn-outline-warning m-1" style="width: 150px" href="${links}/file/admin/viewall"> <fmt:message bundle="${lang}" key="backtolist"/></a>                                   
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
    //hien thi passsword hay dau *
       function show() {
        var pswrd = document.getElementById("adminPassword");
        var icon = document.getElementById("faspass");
        if (pswrd.type === "password") {
            pswrd.type = "text";
            icon.className="icon-lock-open icons";
            icon.style.color = "orange";
        } else {
            icon.className="icon-lock icons";
            pswrd.type = "password";
            icon.style.color = "white";
        }
    }
    function show2() {
        var pswrd = document.getElementById("adminPasswordConfirm");
        var icon = document.getElementById("faspassconfirm");
        if (pswrd.type === "password") {
            pswrd.type = "text";
            icon.className="icon-lock-open icons";
            icon.style.color = "orange";
        } else {
            pswrd.type = "password";
            icon.className="icon-lock icons";
            icon.style.color = "white";
        }
    }    
     var loadFile = function (event) {
        var reader = new FileReader();
        reader.onload = function () {
            var output = document.getElementById('output');
            output.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    };
    

    //nhap du lieu goi ve server lay data
    $("#adminUsername").change(function () {
        
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "${links}/file/admin/search",
            data : {
                username: $("#adminUsername").val()
            },
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
            console.log("SUCCESS: ", data);
            if (data.adminUsername != null) {
                
		//kiem tra data co bi trung voi du lieu cu ko                
                $.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != ''+data.adminUsername;
                }, 'This two elements are the same, please change it.');
                
            } else {
                
		$.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != '';
                }, 'This two elements are the same, please change it.');
                }
            },
        error : function(e) {
	console.log("ERROR: ", e);
        }
	});
    });
    
    
    jQuery.validator.addMethod("lettersonlys", function (value, element) {
        return this.optional(element) || /^[a-zA-Z áàảãạắằẳẵặăấầẩẫậâđéèẻẽẹềếểễệêíìỉĩịòóỏõọồốổỗộôờớởỡợơùúủũụừứửữựưỳýỷỹỵ]*$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)");
    jQuery.validator.addMethod("decimal", function (value, element) {
        return this.optional(element) || /^\d*(\.\d{0,2})?$/.test(value);
    }, " (<fmt:message bundle='${lang}' key='2sothapphan'/>)");
    
    $(document).ready(function () {
        $("#admin").validate({
            rules: {
                adminName: {
                    required: true,
                    minlength: 2,
                    maxlength: 20,
                    lettersonlys: true,
                },
                adminEmail: {
                    required: true,
                    email: true                    
                },
                adminUsername: {
                    required: true,
                    minlength: 2,
                    maxlength: 20,
                    notEqualTo:"#adminName"
                },
                adminPassword: {
                    required: true,
                    minlength: 2,
                    maxlength: 20
                },
                adminPasswordConfirm: {
                    required: true,
                    minlength: 2,
                    maxlength: 20,
                    equalTo: "#adminPassword"
                },
                adminMobile: {
                    required: true,
                    minlength: 10,
                    maxlength: 12,
                    number: true
                },
                adminBirthday: {
                    required: true,
                }
                
            },
            messages: {
                adminName: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                    lettersonlys: " (<fmt:message bundle='${lang}' key='requiredaphabet'/>)",
                },
                adminEmail: " (<fmt:message bundle='${lang}' key='validEmail'/>)",
                adminUsername: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                    notEqualTo: " (<fmt:message bundle='${lang}' key='doubleData'/>)",
                },
                adminPassword: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                },
                adminPasswordConfirm: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 2 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 20 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                    equalTo: " (<fmt:message bundle='${lang}' key='passwordmatch'/>)",
                },
                adminMobile: {
                    required: " (<fmt:message bundle='${lang}' key='requirednull'/>)",
                    minlength: " (<fmt:message bundle='${lang}' key='requiredminleng'/> 10 <fmt:message bundle='${lang}' key='requiredlengminmore'/> )",
                    maxlength: " (<fmt:message bundle='${lang}' key='requiredmaxleng'/> 12 <fmt:message bundle='${lang}' key='requiredlengmaxmore'/>)",
                    number: " (<fmt:message bundle='${lang}' key='requirednumber'/>)",
                },
                adminBirthday: {
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
</script>


