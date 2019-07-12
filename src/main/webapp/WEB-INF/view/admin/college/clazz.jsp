<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<script src=""></script>
<!-- Page Content -->
<div id="page-wrapper">

    <div class="container-fluid">
        <div>
            < h1  class = " page-header " >Class Management</ h1 >
        </div>
        <%--<c:forEach var="entrty" items="${classBelongSpec}">--%>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Class information
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                <thead>
                                <tr>
                                    < th >Professional</ th >
                                    < th > class number </ th >
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--<c:forEach var="className" items="${entrty.value}">--%>
                                <c:forEach var="clazz" items="${clazzList}">
                                    <tr>
                                        <td>${clazz.specName}</td>
                                        <td>${clazz.clazzId}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/clazz.do/delete?clazzId=${clazz.clazzId}"
                                               Onclick = " return confirm('whether you want to delete the professional') " >delete</ a >
                                        </td>
                                    </tr>
                                </c:forEach>
                                <%--</c:forEach>--%>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <%--</c:forEach>--%>

    </div>
    <a href="${pageContext.request.contextPath}/clazz.do/clazz_add.view" class="btn btn-primary" role="button">Add class</a>
    <!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<jsp:include page="/bottom.jsp"></jsp:include>
