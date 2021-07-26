<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>项目管理页面 >> 项目添加页面</span>
        </div>
        <div class="providerAdd">
           <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/sys/item/add.html">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="i_name">项目名称：</label>
                    <input type="text" name="i_name" id="i_name" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="i_sort">项目级别：</label>
                   <input type="text" name="i_sort" id="i_sort" value="">
					<font color="red"></font>
                </div>
               <div>
                    <label for="i_year">项目年度：</label>
                   <input type="date" name="i_year" id="i_year" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="i_R_unit">参与单位：</label>
                    <input type="text" name="i_R_unit" id="i_R_unit" value="">
					<font color="red"></font>

                </div>
                <div>
                    <label for="i_A_unit">承担单位：</label>
                    <input type="text" name="i_A_unit" id="i_A_unit" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="i_p_name">负责人：</label>
                    <select name="i_p_name" id="i_p_name">
                        <c:forEach var="user" items="${users}">
                            <option value="${user.u_id}">${user.u_name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label for="i_cycle">周期/年：</label>
                    <input type="text" name="i_cycle" id="i_cycle" value="">
                </div>
                <div>
                    <label for="i_type">创新类型：</label>
                    <input type="text" name="i_type" id="i_type" value="">
                </div>
               <div>
                    <label for="i_text">摘要：</label>
                    <input type="text" name="i_text" id="i_text" value="">
                </div>
               <div>
                    <label for="i_budget">预算金额：</label>
                    <input type="text" name="i_budget" id="i_budget" value="">
                </div>
               <div>
                    <label for="i_evolve">项目进度：</label>
                    <input type="text"  readonly placeholder="新建项目--在研 不可修改！">
                    <input type="hidden" name="i_evolve" id="i_evolve" value="2">

                </div>
               <%--字段i_flag 存 user的u_status--%>
               <input type="hidden" name="i_flag" value="${loginUser.u_status}">

                <div class="providerAddBtn">
                    <input type="submit" name="add" id="add" value="保存">
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </form>
     </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/provideradd.js"></script>
