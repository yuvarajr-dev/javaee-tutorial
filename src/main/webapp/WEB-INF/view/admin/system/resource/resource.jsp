<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<%--<jsp:include page="/user.do/findAll"></jsp:include>--%>
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
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    < th >role name</ th >
                                    < th >character description</ th >
                                    < th > owned resources </ th >
                                    < th > operation </ th >
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="role" items="${roleList}">
                                    <tr>
                                        <td>${role}</td>
                                        <td>${role}</td>
                                        <td>${role}</td>
                                        <td>${role}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/role.do/delete?id=${role.roleId}"
                                               Onclick = " return confirm('whether you want to delete the role') " >delete</ a >
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/role.do/role_add.view" class="btn btn-primary"
                               role="button">Add role</a>
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
