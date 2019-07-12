<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " > Student Management</ h1 >
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        student information
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/student.do/update" method="post" enctype="multipart/form-data">
                                <label>student ID:${param.get("studentId")}</label>
                                <label> </label>
                                <label>Name</label>
                                <input class="form-control" name="name">
                                < label > ID number </ label >
                                <input class="form-control" name="idCard">
                                < label > gender </ label >
                                <select class="form-control" name="gender">
                                    <option>male</option>
                                    <option>Female</option>
                                </select>
                                < label > contact number </ label >
                                <input class="form-control" name="telephoneNumber">
                                < label >Class </ label >
                                <input class="form-control" name="className">
                                < label >year </ label >
                                <input class="form-control" name="year">
                                < label > Living place</ label >
                                <input class="form-control" name="studentOriginBase">
                                < label >photo </ label >
                                <input name="pic" type="file">
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
