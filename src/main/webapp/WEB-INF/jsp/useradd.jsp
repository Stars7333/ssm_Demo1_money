<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath}/sys/user/useUserA">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label for="u_name">用户姓名：</label>
                    <input type="text" name="u_name" id="u_name" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="u_sex">性别：</label>
                    <input type="radio" name="u_sex" id="u_sex"  value="1" checked>男
                    <input type="radio" name="u_sex"  value="2">女
					<font color="red"></font>
                </div>
                <div>
                    <label for="userPassword">用户密码：</label>
                    <input type="password" name="u_pwd" id="userPassword" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="ruserPassword">确认密码：</label>
                    <input type="password" name="ruserPassword" id="ruserPassword" value="">
                    <font color="red"></font>
                </div>
                <div>
                    <label for="u_birthday">出生日期：</label>
                    <input type="date" name="u_birthday" id="u_birthday" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="u_degree">学位：</label>
                    <select name="u_degree" id="u_degree">
                        <option value="0" selected>-----请选择-----</option>
                        <option value="1" >博士</option>
                        <option value="2">硕士</option>
                        <option value="3">学士</option>
                        <option value="4" >其他</option>
                    </select>
					<font color="red"></font>
                </div>
                <div>
                    <label for="u_professional">职称：</label>
                    <select name="u_professional" id="u_professional">
                        <option value="0" selected>-----请选择-----</option>
                        <option value="1">高级</option>
                        <option value="2">中级</option>
                        <option value="3">低级</option>
                        <option value="4">其他</option>
                    </select>
					<font color="red"></font>
                </div>


                <div>
                    <label for="u_specialty">专业：</label>
                    <input type="text" name="u_specialty" id="u_specialty" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="u_phone1">办公电话：</label>
                    <input type="text" name="u_phone1" id="u_phone1" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="u_phone2">移动电话：</label>
                    <input type="text" name="u_phone2" id="u_phone2" value="">
					<font color="red"></font>
                </div>

                <div>
                    <label for="address">用户地址：</label>
                   <input name="address" id="address"  value="">
                </div>
                <div>
                    <label for="u_email">电子邮箱：</label>
                   <input name="u_email" id="u_email"  value="">
                </div>


                <div class="providerAddBtn">
                    <input type="submit" name="add" id="add" value="保存" >
					<input type="button" id="back" name="back" value="返回" onclick="javascript:history.go(-1);" >
                </div>
            </form>
        </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/useradd.js"></script>
