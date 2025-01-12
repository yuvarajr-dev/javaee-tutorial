<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                < h1  class = " page-header " >Textbook added</ h1 >
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Added textbook
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <form method="post" action="${pageContext.request.contextPath}/orderbook.do/audit">
                                    <table class="table table-hover"
                                           id="dataTables-example">
                                        <thead>
                                        <tr>
                                            < th >professional</ th >
                                            < th > Course Name </ th >
                                            < th > book number </ th >
                                            < th > title </ th >
                                            < th > date of printing </ th >
                                            < th > author </ th >
                                            < th >publisher</ th >
                                            < th >Textbook category</ th >
                                            < th > unit price </ th >
                                            < th >Number of students</ th >
                                            < th >Remarks</ th >
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="orderBookReviewVo" items="${notReviewedBookList}">
                                            <tr>
                                                <td>${orderBookReviewVo.speciality}</td>
                                                <td>${orderBookReviewVo.courseTitle}</td>
                                                <td>${orderBookReviewVo.isbn}</td>
                                                <td>${orderBookReviewVo.bookTitle}</td>
                                                <td>${orderBookReviewVo.dateOfPrinting}</td>
                                                <td>${orderBookReviewVo.author}</td>
                                                <td>${orderBookReviewVo.press}</td>
                                                <td>${orderBookReviewVo.category}</td>
                                                <td>${orderBookReviewVo.unitPrice}</td>
                                                <td>${orderBookReviewVo.stdCount}</td>
                                                <td>${orderBookReviewVo.remark}</td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                    <button type="submit" class="btn btn-warning" id="btn_alter">审核
                                    </button>
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
