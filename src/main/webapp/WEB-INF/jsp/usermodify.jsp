<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="providerAdd">
        <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/sys/user/modifysave.html" >
			 <div>
                    <label for="u_id">用户编码：</label>
                    <input type="text" id="u_id" name="u_id" value="${user.u_id }" readonly="readonly">
             </div>
			 <div>
                    <label for="u_name">用户名称：</label>
                    <input type="text" name="u_name" id="u_name" value="${user.u_name }">
					<font color="red"></font>
             </div>
			 <div>
                    <label for="u_sex">用户性别：</label>
                    <select name="u_sex" id="u_sex">
						<c:choose>
							<c:when test="${user.u_sex == 1 }">
								<option value="1" selected>男</option>
					    		<option value="2">女</option>
							</c:when>
							<c:otherwise>
								<option value="1">男</option>
					    		<option value="2"  selected="selected">女</option>
							</c:otherwise>
						</c:choose>
					 </select>
             </div>
			 <div>
                    <label for="birthday">出生日期：</label>
                    <input type="text" Class="Wdate" id="birthday" name="u_birthday" value="<fmt:formatDate value="${user.u_birthday }" pattern="yyyy-MM-dd"/>"
					readonly="readonly" onclick="WdatePicker();">
                    <font color="red"></font>
              </div>

		       <div>
                   <label for="u_degree">学位：</label>
                   <select name="u_degree" id="u_degree">
                       <c:if test="${user.u_degree == 1 }">
                           <option value="1" selected="selected">博士</option>
                           <option value="2">硕士</option>
                           <option value="3">学士</option>
                           <option value="4" >其他</option>
                       </c:if><c:if test="${user.u_degree == 2 }">
                           <option value="1">博士</option>
                           <option value="2" selected="selected">硕士</option>
                           <option value="3">学士</option>
                           <option value="4" >其他</option>
                       </c:if><c:if test="${user.u_degree == 3 }">
                           <option value="1" >博士</option>
                           <option value="2">硕士</option>
                           <option value="3" selected="selected">学士</option>
                           <option value="4" >其他</option>
                       </c:if><c:if test="${user.u_degree == 4 }">
                           <option value="1" >博士</option>
                           <option value="2">硕士</option>
                           <option value="3">学士</option>
                           <option value="4" selected="selected">其他</option>
                       </c:if>

                   </select>
                    <font color="red"></font>
               </div>
                <div>
                    <label for="u_professional">职称：</label>
                    <select name="u_professional" id="u_professional">
                        <c:if test="${user.u_professional==1}">
                            <option value="1" selected>高级</option>
                            <option value="2">中级</option>
                            <option value="3">低级</option>
                            <option value="4">其他</option>
                        </c:if><c:if test="${user.u_professional==2}">
                            <option value="1" >高级</option>
                            <option value="2"selected>中级</option>
                            <option value="3">低级</option>
                            <option value="4">其他</option>
                        </c:if><c:if test="${user.u_professional==3}">
                            <option value="1" >高级</option>
                            <option value="2">中级</option>
                            <option value="3"selected>低级</option>
                            <option value="4">其他</option>
                        </c:if><c:if test="${user.u_professional==4}">
                            <option value="1" >高级</option>
                            <option value="2">中级</option>
                            <option value="3">低级</option>
                            <option value="4" selected>其他</option>
                        </c:if>
                    </select>
                    <font color="red"></font>
                </div>
            <div>
                <label for="u_specialty">专业：</label>
                <input type="text" name="u_specialty" id="u_specialty" value="${user.u_specialty }">
                <font color="red"></font>
            </div>
            <div>
                <label for="u_phone1">办公电话：</label>
                <input type="text" name="u_phone1" id="u_phone1" value="${user.u_phone1 }">
                <font color="red"></font>
            </div>
            <div>
                <label for="u_phone2">移动电话：</label>
                <input type="text" name="u_phone2" id="u_phone2" value="${user.u_phone2 }">
                <font color="red"></font>
            </div>
            <div>
                <label for="u_email">邮箱：</label>
                <input type="text" name="u_email" id="u_email" value="${user.u_email }">
                <font color="red"></font>
            </div>
				<div>
                    <label for="u_status">用户角色：</label>
                    <c:if test="${user.u_status==1}">
                        <input type="radio"  id="u_status" name="u_status" value="1" checked>管理员
                        <input type="radio"  name="u_status" value="2">技术人员
                        <input type="radio"  name="u_status" value="3" >项目负责人
                    </c:if>
                    <c:if test="${user.u_status==2}">
                        <input type="radio"  name="u_status" value="1">管理员
                        <input type="radio" id="u_status"  name="u_status" value="2" checked>技术人员
                        <input type="radio"  name="u_status" value="3" >项目负责人
                    </c:if>
                    <c:if test="${user.u_status==3}">
                        <input type="radio"  name="u_status" value="1">管理员
                        <input type="radio"  name="u_status" value="2">技术人员
                        <input type="radio" id="u_status" name="u_status" value="3" checked>项目负责人
                    </c:if>

        			<font color="red"></font>
                </div>

			 <div class="providerAddBtn">
                    <input type="submit" name="save" id="save" value="保存" />
                    <input type="button" id="back" name="back" value="返回"/>
                </div>
            </form>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/usermodify.js"></script>
