<%-- 
    Document   : errologinadmin
    Created on : Jun 22, 2020, 6:30:26 PM
    Author     : Windows 18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>ban can phai <a href="${links}/file/register/logout">Login</a> de vao trang</h3>
        <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
        <% session.setAttribute("links", request.getContextPath());%>
    </body>
    
</html>
