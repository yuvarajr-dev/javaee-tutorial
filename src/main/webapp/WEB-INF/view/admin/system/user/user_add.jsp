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
                            <form action="${pageContext.request.contextPath}/user.do/add" method="post">
                                < label >username</ label >
                                <input class="form-control" name="userId">
                                < label >password</ label >
                                <input class="form-control" name="password">
                                < label >mailbox</ label >
                                <input class="form-control" name="email">
                                < label >list of characters (hold down the shift key to select multiple) </ label >
                                <select multiple="true" class="form-control" name="roleIds">
                                    <c:forEach var="role" items="${roleList}">
                                        <option value="${role.id}">${role.description}</option>
                                    </c:forEach>
                                </select>

                                <label></label>
                                <button type="submit"
                                        class="btn btn-primary form-control">Add to
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
<jsp:include page="${request.getContextPath}/bottom.jsp"></jsp:include>
