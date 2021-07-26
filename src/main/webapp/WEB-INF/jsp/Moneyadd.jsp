<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>资费管理页面 >> 资费添加页面</span>
        </div>
        <div class="providerAdd">
           <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/sys/money/add.html">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="m_name">资费名称：</label>
                    <input type="text" name="m_name" id="m_name" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="m_text">摘要：</label>
                   <input type="text" name="m_text" id="m_text" value="">
					<font color="red"></font>
                </div>
               <div>
                    <label for="m_Time">时间：</label>
                   <input type="date" name="m_Time" id="m_Time" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="m_Debit">支出金额：</label>
                    <input type="text" name="m_Debit" id="m_Debit" value="">
					<font color="red"></font>

                </div>
                <div>
                    <label for="m_balance">余额：</label>
                    <input type="text" name="m_balance" id="m_balance" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="m_i_id">选选择报销资费的项目：</label>
                    <select name="m_i_id" id="m_i_id">
                        <c:forEach var="item" items="${items}">
                            <option value="${item.i_id}">${item.i_name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label for="m_img">附件张数：</label>
                    <input type="text" name="m_img" id="m_img" value="">
                </div>

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
