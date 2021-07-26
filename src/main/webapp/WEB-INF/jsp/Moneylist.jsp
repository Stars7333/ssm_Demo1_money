<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>经费管理页面</span>
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
				<a href="${pageContext.request.contextPath }/sys/money/Moneyadd.html">添加资费</a>
				<input name="u_status" class="input-text"	type="hidden" value="${loginUser.u_status }">
			</form>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">id</th>
                <th width="10%">凭证编号</th>
                <th width="10%">经费支出科目</th>
                <th width="10%">时间</th>
                <th width="10%">摘要</th>
                <th width="10%">收入金额</th>
                <th width="10%">支出金额</th>
                <th width="10%">余额</th>
                <th width="10%">附件张数</th>
                <th width="10%">操作</th>
            </tr>
            <c:forEach var="money" items="${pageUtil.lists }" varStatus="status">
				<tr>
					<td>
					<span id="i_id">${money.m_id }</span>
					</td>
					<td>
					<span>${money.m_i_id }</span>
					</td>
					<td>
					<span>${money.m_name }</span>
					</td>
					<td>
					<span>
					<fmt:formatDate value="${money.m_Time}" pattern="yyyy-MM-dd"/>
					</span>
					</td>
					<td>
					<span>${money.m_text}</span>
					</td>
					<td>
					<span>${money.m_Debit}</span>
					</td>
					<td>
					<span>${money.m_Debit-money.m_balance}</span>
					</td>
					<td>
					<span>${money.m_balance}</span>
					</td>
					<td>
					<span>${money.m_img}</span>
					</td>
					<td>
					<span><a class="viewMoney" href="javascript:;" m_id="${money.m_id }"><img src="${pageContext.request.contextPath }/statics/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyMoney" href="javascript:;"  m_id="${money.m_id }" ><img src="${pageContext.request.contextPath }/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteMoney" href="javascript:;"  m_id="${money.m_id }"><img src="${pageContext.request.contextPath }/statics/images/schu.png" alt="删除" title="删除"/></a></span>
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
	var conName = "money"
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
			var u_status = $(".u_status").val();
			var val = $("#LIkai").val()
			var i_id = $("#i_id").html()
			if (u_status==3){
				alert("您没有权限修改！")
			}else {
				if (val==3){
					alert("该项目已完结")
				}else {
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
				}
			}



		})
	})
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerlist.js"></script>

