<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " >Add class</ h1 >
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Class information
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/clazz.do/add" method="get">
                                < label > belongs to the department </ label >
                                <select onchange="test(this)" class="form-control" name="deptName">
                                    < option > - please select - </ option >
                                    <c:forEach var="deptName" items="${deptNameList}">
                                        <option>${deptName}</option>
                                    </c:forEach>
                                </select>
                                < label > belongs to the profession </ label >
                                <select id="spec" class="form-control" name="specName">
                                    < option > - please select - </ option >
                                </select>
                                < label >year of opening </ label >
                                <select class="form-control" name="year">
                                    <c:forEach var="term" items="${termList}">
                                        <option value="${term.val}">${term.text}</option>
                                    </c:forEach>
                                </select>
                                <%--<select class="form-control" name="departmentName">--%>
                                <%--<c:forEach var="speciality" items="${speclities}">--%>
                                <%--<option>${speciality}</option>--%>
                                <%--</c:forEach>--%>
                                <%--</select>--%>
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
<script>
    var deptAndSpec = $ {deptAndSpecJson}
            function setSpec(dept) {
                setSelectOption ( ' spec ' , deptAndSpec[dept], ' -Please select - ' );
            }
    /*
     * Description: Add the passed option value to the specified drop-down list
     * @param {String || Object]} selectObj The name or object of the target drop-down box must be
     */
    function removeOptions(selectObj) {
        if (typeof selectObj != 'object') {
            selectObj = document.getElementById(selectObj);
        }
        / / The original option count
        var len = selectObj.options.length;
        for ( was i =  0 ; i < len; i ++ ) {
            / / Remove the current option
            selectObj.options[0] = null;
        }
    }
    /*
     * Description: Set the passed option value to the specified drop-down list
     *
     * @param {String || Object]} selectObj The name or object of the target drop-down box must be
     * @param {Array} optionList option value format: [{txt: 'Beijing', val: '010'}, {txt: 'Shanghai', val: '020'}], must
     * @param {String} firstOption The first option value, such as: "Please select", optional, the value is null
     * @param {String} selected by default, optional
     */
    function setSelectOption(selectObj, optionList, firstOption, selected) {
        if (typeof selectObj != 'object') {
            selectObj = document.getElementById(selectObj);
        }
        // Clear option
        removeOptions(selectObj);
        // option count
        where start =  0 ;
        / / If you need to add the first option
        if (firstOption) {
            selectObj.options[0] = new Option(firstOption);
            // Option count starts at 1
            start++;
        }
        var len = optionList.length;
        for ( was i =  0 ; i < len; i ++ ) {
            / / Set option
            selectObj.options[start] = new Option(optionList[i]);
            // Selected item
            if (selected == optionList[i]) {
                selectObj.options[start].selected = true;
            }
            // Count plus 1
            start++;
        }
    }
    function test(btn) {
        setSpec(btn.options[btn.selectedIndex].text);
    }
</script>
<jsp:include page="/bottom.jsp"></jsp:include>
