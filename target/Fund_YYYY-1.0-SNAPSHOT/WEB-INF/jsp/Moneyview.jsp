<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
 <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>项目管理页面 >> 信息查看</span>
        </div>
        <div class="providerView"><%-- users --%>
            <p><strong>编码：</strong><span>${money.m_id }</span></p>
            <p><strong>凭证编号：</strong><span>${money.m_i_id }</span></p>
            <p><strong>摘要：</strong><span>${money.m_text }</span></p>
            <p><strong>时间：</strong><span><fmt:formatDate value="${money.m_Time}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>支出金额：</strong><span>${money.m_Debit }</span></p>
            <p><strong>余额：</strong><span>${money.m_balance }</span></p>
            <p><strong>附件张数：</strong><span>${money.m_img }</span></p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
            </div>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providerview.js"></script>
