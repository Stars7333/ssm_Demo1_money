<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div class="right">
      <div class="location">
          <strong>你现在所在的位置是:</strong>
          <span>资费管理页面 >> 资费修改页</span>
      </div>
      <div class="providerAdd">
          <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/sys/money/modifysave.html">
              <input type="hidden" name="m_id" value="${money.m_id }"/>
              <!--div的class 为error是验证错误，ok是验证成功-->
              <div class="">
                  <label for="m_name">经费支出科目：</label>
                  <input type="text" name="m_name" id="m_name" value="${money.m_name }" readonly="readonly">
              </div>
              <div>
                  <label for="m_text">摘要：</label>
                 <input type="text" name="m_text" id="m_text" value="${money.m_text }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="m_Time">时间：</label>
                  <input type="date" name="m_Time" id="m_Time" value="<fmt:formatDate value="${money.m_Time}" pattern="yyyy-MM-dd"/>">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="m_Debit">支出金额：</label>
                  <input type="text" name="m_Debit" id="m_Debit" value="${money.m_Debit }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="m_balance">余额：</label>
                  <input type="text" name="m_balance" id="m_balance" value="${money.m_balance }">
              </div>
              
              <div>
                  <label for="m_i_id">选择项目：</label>
                  <select id="m_i_id" name="m_i_id">
                      <c:if test="${items != null }">
                          <c:forEach  var="item" items="${items}">
                              <option <c:if test="${item.i_id == money.m_i_id }">selected="selected"</c:if>
                                      value="${item.i_id}">${item.i_name}</option>
                          </c:forEach>
                      </c:if>
                  </select>
              </div>
              
              <div>
                  <label for="m_img">附件张数：</label>
                  <input type="text" name="m_img" id="m_img" value="${money.m_img }">
              </div>

              <div class="providerAddBtn">
                  <input type="submit" name="save" id="save" value="保存">
				  <input type="button" id="back" name="back" value="返回" >
              </div>
          </form>
      </div>
  </div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/providermodify.js"></script>