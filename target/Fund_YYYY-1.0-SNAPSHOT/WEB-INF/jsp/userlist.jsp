<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            <div class="search">
           		<form method="post" action="#">
					 <input type="hidden" name="pageindex" value="1"/>
<%--					 <input	value="查 询" type="submit" id="searchbutton">--%>
					 <a href="${pageContext.request.contextPath}/sys/user/useradd.html" >添加用户</a>
				</form>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
<%--                    <th width="5%">用户编码</th>--%>
                    <th width="10%">用户名称</th>
                    <th width="5%">性别</th>
                    <th width="10%">出生日期</th>
                    <th width="10%">学位</th>
                    <th width="10%">职称</th>
                    <th width="10%">专业</th>
                    <th width="10%">办公电话/移动电话</th>
                    <th width="10%">电子邮箱</th>
                    <th width="10%">身份</th>
                    <th width="10%">操作</th>
                </tr>
                   <c:forEach var="user" items="${pageUtil.lists}" varStatus="status">
					<tr>
<%--						<td>--%>
<%--						<span>${user.u_id }</span>--%>
<%--						</td>--%>
						<td>
						<span>${user.u_name }</span>
						</td>
						<td>
							<span>
								<c:if test="${user.u_sex==1}">男</c:if>
								<c:if test="${user.u_sex==2 }">女</c:if>
							</span>
						</td>
						<td>
						<span><fmt:formatDate value="${user.u_birthday}" pattern="yyyy-MM-dd"/></span>
						</td>
						<td>
						<span>
						<c:if test="${user.u_degree==1}">博士</c:if>
						<c:if test="${user.u_degree==2}">硕士</c:if>
						<c:if test="${user.u_degree==3}">学士</c:if>
						<c:if test="${user.u_degree==4}">其他</c:if>
						</span>
						</td>
						<td>
							<span>
								<c:if test="${user.u_professional==1}">高级</c:if>
								<c:if test="${user.u_professional==2}">中级</c:if>
								<c:if test="${user.u_professional==3}">低级</c:if>
								<c:if test="${user.u_professional==4}">其他</c:if>
							</span>
						</td>
                        <td>
							<span>${user.u_specialty}</span>
						</td>
                        <td>
							<span>${user.u_phone1}<br>${user.u_phone2}</span>
						</td>
                        <td>
							<span>${user.u_email}</span>
						</td>
                        ><td>
                            <span>
                                <c:if test="${user.u_status==1}">管理员</c:if>
                                <c:if test="${user.u_status==2}">技术人员</c:if>
                                <c:if test="${user.u_status==3}">负责人</c:if>
                            </span>
                        </td>
						<td>
						<span><a class="viewUser" href="javascript:" userid=${user.u_id } username=${user.u_name }><img src="${pageContext.request.contextPath}/statics/images/read.png" alt="查看" title="查看"/></a></span>
						<span><a class="modifyUser" href="javascript:" userid=${user.u_id } username=${user.u_name }><img src="${pageContext.request.contextPath}/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
						<span><a class="deleteUser" href="${pageContext.request.contextPath}/sys/user/delUser" userid=${user.u_id } username=${user.u_name }><img src="${pageContext.request.contextPath}/statics/images/schu.png" alt="删除" title="删除"/></a></span>
						</td>
					</tr>
				</c:forEach>
			</table>
			<input type="hidden" id="totalPageCount" value="${pageUtil.pagecount}"/>
			<script>
				var conName = "user"
			</script>
		  	<c:import url="rollpage.jsp">
	          	<c:param name="totalCount" value="${pageUtil.counts}"/>
	          	<c:param name="currentPageNo" value="${pageUtil.pageindex}"/>
	          	<c:param name="totalPageCount" value="${pageUtil.pagecount}"/>
          	</c:import>
        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/userlist.js"></script>