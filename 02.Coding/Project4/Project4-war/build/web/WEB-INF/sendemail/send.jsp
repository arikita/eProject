<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/JS-CSS/tinymce.min.js"></script>
<script>tinymce.init({selector: 'textarea'});</script>
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title text-info">Send Email</h5>
                    <p class="category">List all the information of  <a href="#">Email</a></p>
                </div>
                <div class="card-body all-icons">
                    <form:form action="${links}/file/email/sendadmin" commandName="sendme" method="post" >
                        <div class="form-group">
                            <form:label path="subject">Chu de</form:label>
                            <form:input path="subject"></form:input>                  
                            </div>
                        <div class="form-group">
                            <form:label path="messend">Title</form:label>
                            <form:textarea path="messend"></form:textarea>                  
                            </div>

                            <div class="form-group">                                    
                                <input type="submit" value="Send" class="btn btn-round btn-primary">
                            </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

