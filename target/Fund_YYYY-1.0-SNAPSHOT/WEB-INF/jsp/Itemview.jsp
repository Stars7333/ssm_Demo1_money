<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
 <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>项目管理页面 >> 信息查看</span>
        </div>
        <div class="providerView"><%-- users --%>
            <p><strong>项目编码：</strong><span>${item.i_id }</span></p>
            <p><strong>项目名称：</strong><span>${item.i_name }</span></p>
            <p><strong>项目类别：</strong><span>${item.i_sort }</span></p>
            <p><strong>项目年度：</strong><span><fmt:formatDate value="${item.i_year}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>参与单位：</strong><span>${item.i_R_unit }</span></p>
            <p><strong>担保单位：</strong><span>${item.i_A_unit }</span></p>
            <p><strong>负责人：</strong><span>
                <c:forEach items="${users}" var="user">
                    <c:if test="${user.u_id==item.i_p_name}">
                        ${user.u_name}
                    </c:if>
                </c:forEach>
            </span></p>
            <p><strong>起始时间：</strong><span><fmt:formatDate value="${item.i_GoTime}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>结束时间：</strong><span><fmt:formatDate value="${item.i_EndTime}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>周期：</strong><span>${item.i_cycle}</span></p>
            <p><strong>创新类型：</strong><span>${item.i_type}</span></p>
            <p><strong>摘要：</strong><span>${item.i_text}</span></p>
            <p><strong>预算金额：</strong><span>${item.i_budget}</span></p>
            <p><strong>余额：</strong><span>${item.i_balance}</span></p>
            <p><strong>进度：</strong><span>
                <c:if test="${item.i_evolve==1}">完结</c:if>
                <c:if test="${item.i_evolve==2}">在研</c:if>
                <c:if test="${item.i_evolve==3}">暂停</c:if>
            </span></p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
            </div>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerview.js"></script>
