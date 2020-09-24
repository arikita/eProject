<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <div class="navbar navbar-inverse navbar-fixed-top">

            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li ><a style="color: red" href="#">abcd</a></li>
                        <li><a href="#">defg</a></li>
                        <li><a href="#">ijklm</a></li>
                    </ul>
                    <c:if test="${not empty fullname}">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#">${fullname}</a>
                            </li>
                            <li><a href="${links}/file/register/logout" class="btn btn-warning">Logout</a></li>
                        </ul>
                    </c:if>

                    <c:if test="${empty fullname}">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="${links}/file/register/login">Login</a></li>
                        </ul>
                    </c:if>
                   
                </div>
            </div>
        </div>
  