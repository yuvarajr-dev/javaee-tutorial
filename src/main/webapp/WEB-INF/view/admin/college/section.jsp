<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " > Course Schedule </ h1 >
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Course information has been created
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                <thead>
                                <tr>
                                    < th > Course ID</ th >
                                    < th > Course Name </ th >
                                    < th >teachers</ th >
                                    < th >Teaching week, week, session</ th >
                                    < th > Classroom </ th >
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="section" items="${sectionList}">
                                    <tr>
                                        <td>${section.secId}</td>
                                        <td>${section.courseTitle}</td>
                                        <td>${section.teacher}</td>
                                        <c:forEach var="timetable" items="${section.timetableList}">
                                            <td>
                                                    ${timetable.weeks}周 ${timetable.week} ${timetable.time}节
                                            </td>
                                            <td>${timetable.classroom}</td>
                                        </c:forEach>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/section.do/delete?secId=${section.secId}"
                                               Onclick = " return confirm('whether to delete the class') " >delete</ a >
                                        </td>
                                    </tr>
                                </c:forEach>
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
        <a href="${pageContext.request.contextPath}/section.do/section_add.view" class="btn btn-primary" role="button">Opening a course</a>
        <a href="${pageContext.request.contextPath}/section.do/section_timetable_add.view" class="btn btn-primary" role="button">Add time</a>

        <!-- /.container-fluid -->
    </div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>
