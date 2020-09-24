<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" type="text/css" rel="stylesheet" />
        
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/JS-CSS/assets/css/bootstrap.min.css"/>
        
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/JS-CSS/assets/css/now-ui-dashboard.css?v=1.5.0"/>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/JS-CSS/assets/demo/demo.css" />
        <link rel="stylesheet" type="text/css"  href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <title><tiles:insertAttribute name="title" ignore="true" /></title>

    </head>
    <body class="">       
            <div class="wrapper">
                <tiles:insertAttribute name="header" />
                <tiles:insertAttribute name="menu" />
                <div class="main-panel" id="main-panel">
                    <tiles:insertAttribute name="body" />
                </div>
               <tiles:insertAttribute name="footer" />
            </div> 
<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/core/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/core/popper.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/core/bootstrap.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/plugins/chartjs.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/plugins/bootstrap-notify.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/js/now-ui-dashboard.min.js?v=1.5.0"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/assets/demo/demo.js"></script>
        <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
    </body>
</html>





