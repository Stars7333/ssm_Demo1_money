<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户信息查看页面</span>
        </div>
        <div class="providerView">
            <p><strong>用户编号：</strong><span>${user.u_id }</span></p>
            <p><strong>用户名称：</strong><span>${user.u_name }</span></p>
            <p><strong>用户性别：</strong>
            	<span>
            		<c:if test="${user.u_sex == 1 }">男</c:if>
					<c:if test="${user.u_sex == 2 }">女</c:if>
				</span>
			</p>
            <p><strong>出生日期：</strong><span><fmt:formatDate value="${user.u_birthday }" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>学位：</strong><span>
                <c:if test="${user.u_degree==1}">博士</c:if>
						<c:if test="${user.u_degree==2}">硕士</c:if>
						<c:if test="${user.u_degree==3}">学士</c:if>
						<c:if test="${user.u_degree==4}">其他</c:if>
            </span></p>
            <p><strong>职称：</strong><span>
                <c:if test="${user.u_professional==1}">高级</c:if>
								<c:if test="${user.u_professional==2}">中级</c:if>
								<c:if test="${user.u_professional==3}">低级</c:if>
								<c:if test="${user.u_professional==4}">其他</c:if>
            </span></p>
            <p><strong>专业：</strong><span>${user.u_specialty}</span></p>
            <p><strong>办公电话：</strong><span>${user.u_phone1}</span></p>
            <p><strong>移动电话：</strong><span>${user.u_phone2}</span></p>
            <p><strong>邮箱：</strong><span>${user.u_email}</span></p>
            <p><strong>密码：</strong><span>${user.u_pwd}</span></p>
            <p><strong>身份：</strong><span>
                <c:if test="${user.u_status==1}">管理员</c:if>
                <c:if test="${user.u_status==2}">技术人员</c:if>
                <c:if test="${user.u_status==3}">项目负责人</c:if>
            </span></p>


			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" onclick="javascript:history:go(-1)">
            </div>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/userview.js"></script>