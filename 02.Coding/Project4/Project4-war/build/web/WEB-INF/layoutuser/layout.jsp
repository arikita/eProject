<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title><tiles:insertAttribute name="title" ignore="true" /></title>
        <link rel="icon" href="${links}/images/logo.png" type="image/x-icon">
        <!-- Bootstrap core CSS-->
        <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- animate CSS-->
        <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Style-->
        <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/app-style.css" rel="stylesheet"/>
        <!-- Custom Style-->
        
    </head>
    <c:if test="${empty bgtheme}">
        <c:set value="bg-theme bg-theme14" var="cssClass"></c:set>
    </c:if>
    <c:if test="${not empty bgtheme}">
        <c:set value="${bgtheme}" var="cssClass"></c:set>
    </c:if>
    <body class="${cssClass}">

        <tiles:insertAttribute name="load" />
        <div id="wrapper">
            
            <tiles:insertAttribute name="body" />
             <tiles:insertAttribute name="footer" />
        </div>


        <!-- Bootstrap core JavaScript-->
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/popper.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/bootstrap.min.js"></script>

        <!-- sidebar-menu js -->
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/sidebar-menu.js"></script>

        <!-- Custom scripts -->
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/app-script.js"></script>
        
    </body>
</html>




