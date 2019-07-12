<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " > Course Management</ h1 >
        </div>
        <div class="panel-heading">
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        course information
                    </div>

                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                <thead>
                                <tr>
                                    < th > name</ th >
                                    < th >type</ th >
                                    < th > credits</ th >
                                    < th >Professional</ th >
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="course" items="${courseList}">
                                    <tr>
                                        <td>${course.courseTitle}</td>
                                        <td>${course.type}</td>
                                        <td>${course.credits}</td>
                                        <td>${course.speciality}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/course.do/delete?courseTitle=${course.courseTitle}"
                                               Onclick = " return confirm('whether you want to delete the lesson') " >delete</ a >
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/course.do/course_add.view" class="btn btn-primary" role="button">添加课程</a>
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
