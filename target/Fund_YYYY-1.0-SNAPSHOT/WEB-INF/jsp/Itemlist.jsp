<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>项目管理页面</span>
        </div>
        <div class="search">
        	<form method="post" action="${pageContext.request.contextPath }/sys/provider/list.html">
<%--				<span>供应商编码：</span>--%>
<%--				<input name="queryProCode" type="text" value="${queryProCode }">--%>
<%--				--%>
<%--				<span>供应商名称：</span>--%>
<%--				<input name="queryProName" type="text" value="${queryProName }">--%>
<%--				<input type="hidden" name="pageIndex" value="1"/>--%>
<%--				<input value="查 询" type="submit" id="searchbutton">--%>
				<a href="${pageContext.request.contextPath }/sys/item/useradd.html">添加项目</a>
				<input name="u_status" class="input-text"	type="hidden" value="${loginUser.u_status }">
			</form>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">项目申报编号</th>
                <th width="10%">项目名称</th>
                <th width="10%">项目年度</th>
                <th width="10%">参与单位</th>
                <th width="10%">承担单位</th>
                <th width="10%">项目周期</th>
                <th width="10%">创新类型</th>
                <th width="10%">负责人</th>
                <th width="10%">项目进度</th>
                <th width="10%">操作</th>
            </tr>
            <c:forEach var="item" items="${pageUtil.lists }" varStatus="status">
				<tr>
					<td>
					<span id="i_id">${item.i_id }</span>
					</td>
					<td>
					<span>${item.i_name }</span>
					</td>
					<td>
					<span>
					<fmt:formatDate value="${item.i_year}" pattern="yyyy-MM-dd"/>
					</span>
					</td>
					<td>
					<span>${item.i_R_unit}</span>
					</td>
					<td>
					<span>${item.i_A_unit}</span>
					</td>
					<td>
					<span>
					<fmt:formatDate value="${item.i_GoTime}" pattern="yyyy-MM-dd"/><br>至<br>
					<fmt:formatDate value="${item.i_EndTime}" pattern="yyyy-MM-dd"/>
					</span>
					</td>
					<td>
						<span>${item.i_type}</span>
					</td>
					<td>
						<span>${item.u_name}</span>
					</td>
					<td>
						<span>
							<select id="LIkai">
								<c:if test="${item.i_evolve==1}">
									<option value="1" selected>完结</option>
									<option value="2">在研</option>
									<option value="3">暂停</option>
								</c:if>
								<c:if test="${item.i_evolve==2}">
									<option value="2" selected>在研</option>
									<option value="1">完结</option>
									<option value="3">暂停</option>
								</c:if>
								<c:if test="${item.i_evolve==3}">
									<option value="3" selected>暂停</option>
									<option value="1">完结</option>
									<option value="2">在研</option>
								</c:if>
							</select>
						</span><%--项目进度--%>
					</td>
					<td>
					<span><a class="viewProvider" href="javascript:;" i_id="${item.i_id }"><img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyProvider" href="javascript:;"  i_id="${item.i_id }" i_name="${item.i_name }"><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteProvider" href="javascript:;"  i_id="${item.i_id }"  i_name="${item.i_name }"><img src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
			</c:forEach>
        </table>
			<input type="hidden" id="totalPageCount" value="${pageUtil.pagecount}"/>
		  	<c:import url="rollpage.jsp">
	          	<c:param name="totalCount" value="${pageUtil.counts}"/>
	          	<c:param name="currentPageNo" value="${pageUtil.pageindex}"/>
	          	<c:param name="totalPageCount" value="${pageUtil.pagecount}"/>
          	</c:import>
    </div>
<script>
	var conName = "item"
</script>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该项目吗？</p>
           <a href="#" id="yes">确定</a>
           <a href="#" id="no">取消</a>
       </div>
   </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script src="${pageContext.request.contextPath }/statics/js/jquery-1.8.3.min.js"></script>
<script>
	$(document).ready(function () {
		$("#LIkai").change(function () {
			// var u_status = $(".u_status").val();
			var val = $("#LIkai").val()
			var i_id = $("#i_id").html()
			$.ajax({
				type:"GET",
				url:path+"/sys/item/upd_evolve",
				data:{evolve:val,i_id:i_id},
				dataType:"text",
				success:function(data){
					if (data=true){
						alert("修改成功")
					}if (data=false){
						alert("修改失败")
					}
				}
			});



		})
	})
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerlist.js"></script>

