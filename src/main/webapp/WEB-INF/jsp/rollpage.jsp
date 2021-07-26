<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
 		<div class="page-bar">

			<ul class="page-num-ul clearfix" style="text-align: center">

				<c:if test="${pageUtil.pageindex > 1}">
					<a href="javascript:page_nav(1);">首页</a>
					<a href="JavaScript:page_nav(${pageUtil.pageindex-1});">上一页</a>
				</c:if>
				<c:if test="${pageUtil.pageindex < pageUtil.pagecount }">
					<a href="javascript:page_nav(${pageUtil.pageindex+1});">下一页</a>
					<a href="javascript:page_nav(${pageUtil.pagecount});">最后一页</a>
				</c:if>
				&nbsp;&nbsp;
			</ul>
			<span style="float:right;margin-bottom: 20px">共${pageUtil.counts }条记录&nbsp;&nbsp; ${pageUtil.pageindex }/${pageUtil.pagecount }页</span>
<%--		 <span class="page-go-form"><label>跳转至</label>--%>
<%--	     <input type="text" name="inputPage" id="inputPage" class="page-key" />页--%>
<%--	     <button type="button" class="page-btn" onClick='jump_to(document.getElementById("inputPage").value)'>GO</button>--%>
<%--		</span>--%>
		</div> 
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/rollpage.js"></script>
</html>