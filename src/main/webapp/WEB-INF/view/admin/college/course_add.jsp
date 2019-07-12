<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            < h1  class = " page-header " >Add a course</ h1 >
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
                            <form action="${pageContext.request.contextPath}/course.do/add" method="get">
                                < label > Course name </ label >
                                <input class="form-control" name="courseTitle">

                                <%--<select name="province" id="province"--%>
                                <%--onchange="test(this)">--%>
                                <%-- <option value="">-Please select -</option> --%>
                                <%-- <option value="Jiangsu Province">Jiangsu Province</option> --%>
                                <%-- <option value="Zhejiang">Zhejiang Province</option> --%>
                                <%--</select> 省--%>

                                <%--<select name="city" id="city">--%>

                                <%-- <option value="">-Please select -</option> --%>
                                <%-- <option value="Hangzhou">Hangzhou</option> --%>
                                <%-- <option value="Ningbo">Ningbo</option> --%>
                                <%-- <option value="Wenzhou">Wenzhou</option> --%>
                                <%-- <option value="Huzhou">Huzhou</option> --%>
                                <%--</select> 市--%>

                                < label > credits </ label >
                                <input type="number" class="form-control" name="credits">
                                < label > belongs to the profession </ label >
                                <select class="form-control" name="speciality">
                                    <c:forEach var="specName" items="${specNameList}">
                                        <option>${specName}</option>
                                    </c:forEach>
                                </select>
                                < label > course type </ label >
                                <select class="form-control" name="type">
                                    < option > compulsory / public course </ option >
                                    < option > elective course / public class</ option >
                                    < option > limited course / professional course </ option >
                                    < option > elective course / professional course </ option >
                                </select>
                                <label></label>
                                <button type="submit"
                                        class="btn btn-primary form-control">添加
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

<script language="JavaScript" type="text/javascript">
    <!--
    var cityArr = [];
    cityArr[ ' Jiangsu Province ' ] = [
        {txt :  ' Nanjing ' , val :  ' Nanjing ' },
        {txt :  ' Wuxi ' , val :  ' Wuxi ' },
        {txt :  '徐州' , val :  '徐州' },
        {txt :  ' Suzhou ' , val :  ' Suzhou ' },
        {txt :  ' Nantong ' , val :  ' Nantong ' },
        {txt :  ' Huaiyin ' , val :  ' Huaiyin ' },
        {txt :  '扬州' , val :  '扬州' },
        {txt :  '镇江' , val :  '镇江' },
        {txt :  '常州' , val :  '常州' }
    ];
    cityArr[ ' Zhejiang ' ] = [
        {txt :  ' Hangzhou ' , val :  ' Hangzhou ' },
        {txt :  ' Ningbo ' , val :  ' Ningbo ' },
        {txt :  ' Wenzhou ' , val :  ' Wenzhou ' },
        {txt :  ' Huzhou ' , val :  ' Huzhou ' }
    ];
    function setCity(province) {
        setSelectOption ( ' city ' , cityArr[province], ' -Please select - ' );
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
            selectObj.options[0] = new Option(firstOption, '');
            // Option count starts at 1
            start++;
        }
        var len = optionList.length;
        for ( was i =  0 ; i < len; i ++ ) {
            / / Set option
            selectObj.options[start] = new Option(optionList[i].txt, optionList[i].val);
            // Selected item
            if (selected == optionList[i].val) {
                selectObj.options[start].selected = true;
            }
            // Count plus 1
            start++;
        }
    }
    function test(btn) {
        if (btn.value != '')
            setCity(btn.options[btn.selectedIndex].value);
    }
    //-->
</script>

<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>
