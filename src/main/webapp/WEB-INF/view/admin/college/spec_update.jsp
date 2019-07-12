<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " >Modify professional information</ h1 >
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Professional information
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/spec.do/update" method="get">
                                <label name="id">Professional name : ${param.get("specName")}</label>
                                <input style="display:none" name="specName"
                                       value="${param.get("specName")}">

                                <p></p>
                                < label > new professional name </ label >
                                <input class="form-control" name="newSpecName">
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
