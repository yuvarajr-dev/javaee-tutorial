<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " > Courses</ h1 >
        </div>
        <div class="panel-heading">
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Opening a course
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/section.do/addTimetable" method="get" class="form-group">
                                <label>Course id</label>
                                <input class="form-control" name="secId">
                                < label >week (input format 1, 2, 3, 4, 5, 6, 7) </ label >
                                <input class="form-control" name="weeks">
                                < label >weeks</ label >
                                <select class="form-control" name="week">
                                    < option >Monday</ option >
                                    < option >Tuesday</ option >
                                    < option >Wednesday</ option >
                                    < option >Thursday</ option >
                                    < option > Friday </ option >
                                    < option > Saturday </ option >
                                    < option >Sunday</ option >
                                </select>
                                < label > section (input format 1, 2, 3, 4, 5, 6, 7) </ label >
                                <input class="form-control" name="time">
                                <label>Classroom</label>
                                <input class="form-control" name="classroom">
                                <label></label>
                                <button type="submit"
                                        Class = " btn btn-primary form-control " > add time
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
</div>

<!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>
