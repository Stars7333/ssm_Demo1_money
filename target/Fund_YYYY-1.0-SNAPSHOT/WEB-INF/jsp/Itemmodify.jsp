<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div class="right">
      <div class="location">
          <strong>你现在所在的位置是:</strong>
          <span>项目管理页面 >> 项目修改页</span>
      </div>
      <div class="providerAdd">
          <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/sys/item/modifysave.html">
              <input type="hidden" name="i_id" value="${item.i_id }"/>
              <input type="hidden" name="i_flag" value="${loginUser.u_status}">
              <!--div的class 为error是验证错误，ok是验证成功-->
              <div class="">
                  <label for="i_name">项目名称：</label>
                  <input type="text" name="i_name" id="i_name" value="${item.i_name }" readonly="readonly">
              </div>
              <div>
                  <label for="i_sort">项目级别：</label>
                 <input type="text" name="i_sort" id="i_sort" value="${item.i_sort }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="i_year">项目年度：</label>
                  <input type="date" name="i_year" id="i_year" value="<fmt:formatDate value="${item.i_year}" pattern="yyyy-MM-dd"/>">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="i_R_unit">参与单位：</label>
                  <input type="text" name="i_R_unit" id="i_R_unit" value="${item.i_R_unit }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="i_A_unit">承担单位：</label>
                  <input type="text" name="i_A_unit" id="i_A_unit" value="${item.i_A_unit }">
              </div>
              
              <div>
                  <label for="i_p_name">负责人：</label>
                  <select id="i_p_name" name="i_p_name">
                      <c:if test="${users != null }">
                          <c:forEach  var="user" items="${users}">
                              <option <c:if test="${user.u_id == item.i_p_name }">selected="selected"</c:if>
                                      value="${user.u_id}">${user.u_name}</option>
                          </c:forEach>
                      </c:if>
                  </select>
              </div>
              
              <div>
                  <label for="i_cycle">周期/年：</label>
                  <input type="text" name="i_cycle" id="i_cycle" value="${item.i_cycle }">
              </div>
              <div>
                  <label for="i_EndTime">结束时间：</label>
                  <input type="date" name="i_EndTime" id="i_EndTime" value="<fmt:formatDate value="${item.i_EndTime}" pattern="yyyy-MM-dd"/>">
              </div>
              <div>
                  <label for="i_type">创新类型：</label>
                  <input type="text" name="i_type" id="i_type" value="${item.i_type }">
              </div>
              <div>
                  <label for="i_text">摘要：</label>
                  <input type="text" name="i_text" id="i_text" value="${item.i_text }">
              </div>
              <div>
                  <label for="i_budget">预算金额：</label>
                  <input type="text" name="i_budget" id="i_budget" value="${item.i_budget }">
              </div>
              <div>
                  <label for="i_balance">余额：</label>
                  <input type="text" name="i_balance" id="i_balance" value="${item.i_balance }">
              </div>
              <div>
                  <label for="i_budget">项目状态：</label>
                  <c:if test="${item.i_evolve==1}">
                      <input name="i_evolve" type="radio" value="1" checked>完结
                      <input name="i_evolve" type="radio" value="2">在研
                      <input name="i_evolve" type="radio" value="3">暂停
                  </c:if>
                  <c:if test="${item.i_evolve==2}">
                      <input name="i_evolve" type="radio" value="1" >完结
                      <input name="i_evolve" type="radio" value="2"checked>在研
                      <input name="i_evolve" type="radio" value="3" >暂停
                  </c:if>
                  <c:if test="${item.i_evolve==3}">
                      <input name="i_evolve" type="radio" value="1" >完结
                      <input name="i_evolve" type="radio" value="2">在研
                      <input name="i_evolve" type="radio" value="3" checked>暂停
                  </c:if>
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