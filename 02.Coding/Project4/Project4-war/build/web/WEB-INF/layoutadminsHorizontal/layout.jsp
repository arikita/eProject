<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
          <!--favicon-->
  <link rel="icon" href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!--Data Tables -->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css">
  <!-- animate CSS-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="<%=request.getContextPath()%>/JS-CSSADMIN/assets/css/app-style.css" rel="stylesheet"/>
    </head>
    <body class="bg-theme bg-theme1"> 
        
         <tiles:insertAttribute name="load" />
         <c:if test="${empty admin}">
            <tiles:insertAttribute name="erro" />
        </c:if>
         <c:if test="${not empty admin}">     
         <div id="wrapper">
             <tiles:insertAttribute name="menu" />
             <tiles:insertAttribute name="header" />
             <tiles:insertAttribute name="body" />
              <tiles:insertAttribute name="footer" />
         </div>
      </c:if>
        <%--<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/core/jquery.min.js"></script>--%>
       
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/demo/demo.js"></script>
        
        <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/bootstrap.min.js"></script>
	
  <!-- simplebar js -->
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/js/app-script.js"></script>

  <!--Data Tables js-->
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
  <script src="<%=request.getContextPath()%>/JS-CSSADMIN/assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>
    </body>
</html>




