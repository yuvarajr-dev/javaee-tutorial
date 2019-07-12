<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " > User Management</ h1 >
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        User Info
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/user.do/update" method="post">
                                <label name="id">username : ${user.userId}</label>
                                <input style="display:none" name="userId" value="${user.userId}">

                                <p></p>
                                < label > new password </ label >
                                <input class="form-control" name="password">
                                < label >mailbox</ label >
                                <input class="form-control" name="email">

                                <div class="form-group">
                                    < form:label  path = " roleIds " >list of roles:</ form:label >
                                    <form:select path="roleIds" items="${roleList}" itemLabel="description"
                                                 itemValue="id" multiple="true"/>
                                    (hold down the shift key to select more)
                                </div>
                                <label></label>
                                <button type="submit"
                                        class="btn btn-primary form-control">modify
                                </button>
                            </form>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>

    <!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>
