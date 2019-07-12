<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/supplier/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                < h1  class = " page-header " >Purchase List</ h1 >
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Purchasing List
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <form method="post" action="/">
                                    <table class="table table-hover"
                                           id="dataTables-example">
                                        <thead>
                                        <tr>
                                            < th > title </ th >
                                            <th>ISBN</th>
                                            < th > date of printing </ th >
                                            < th > author </ th >
                                            < th >publisher</ th >
                                            < th > number</ th >
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="reviewedBook" items="${reviewedBookList}">
                                            <tr>
                                                <td>${reviewedBook.bookTitle}</td>
                                                <td>${reviewedBook.isbn}</td>
                                                <td>${reviewedBook.dateOfPrinting}</td>
                                                <td>${reviewedBook.author}</td>
                                                <td>${reviewedBook.press}</td>
                                                <td>${reviewedBook.count}</td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row-->
        </div>

    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>
