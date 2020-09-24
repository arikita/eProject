<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
<div class="card card-authentication1 mx-auto my-5">
    <div class="card-body">
        <div class="card-content p-2">
            <div class="text-center">
                <img src="${links}/JS-CSSADMIN/assets/images/logo-icon.png" alt="logo icon">
            </div>
            <div class="card-title text-uppercase text-center py-3">Sign In</div>
            <form:form action="${links}/file/register/loginadmin" commandName="customer" method="post" >
                <div class="form-group">
                    <label for="exampleInputUsername" class="sr-only">Username</label>
                    <div class="position-relative has-icon-right">
                        <form:input class="form-control input-shadow" type="text" path="customerName" placeholder="Enter Username" />                        
                        <div class="form-control-position" style="margin-top: 20px">
                            <i class="icon-user"></i>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword" class="sr-only">Password</label>
                    <div class="position-relative has-icon-right">
                        <form:input class="form-control input-shadow" type="password" path="customerPassword" id="loginPass" placeholder="Enter Password" />                        
                        <div class="form-control-position" style="margin-top: 20px">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>                
                <div class="form-row">
                    <div class="form-group col-6">
                        <div class="icheck-material-white">
                            <input type="checkbox" id="user-checkbox" checked="" />
                            <label for="user-checkbox">Remember me</label>
                        </div>
                    </div>
                    <div class="form-group col-6 text-right">
                        <a href="${links}/file/register/resetpassword">Reset Password</a>
                    </div>
                </div>    
                <button type="submit" class="btn btn-light btn-block">Sign In</button>    

            </form:form>    
            
        </div>
    </div>
    
</div>
