<%--
  Created by IntelliJ IDEA.
  User: Chao.Cui.VWED
  Date: 14-3-19
  Time: 下午3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <<c:import url="/template/importedFiles.html" />
    <script type="application/javascript" language="JavaScript">
    </script>
</head>
<body>
<!--navigation for top area-->
<%@ include file="/template/header.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-1">

        </div>
        <div class="col-md-5">
            <div class="modal-body">
                <form role="form" id="userLogonForm" class="form-horizontal" action="/chinalife/register" method="post">
                    <c:if test="${requestScope.error != null}">
                        <c:forEach items="${requestScope.error.errorInfo}" var="entry">
                            <h1>${entry.value}</h1>
                        </c:forEach>
                    </c:if>

                    <div class="form-group">
                        <label for="user_nickname" class="control-label col-md-4">用户名</label>

                        <div class="col-md-8">
                            <input type="text" class="form-control" id="user_nickname" name="nickname"
                                   placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="user_email" class="control-label col-md-4">邮箱地址</label>

                        <div class="col-md-8">
                            <input type="email" class="form-control" id="user_email" name="email"
                                   placeholder="请输入邮箱地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="user_pwd" class="control-label col-md-4">密码</label>

                        <div class="col-md-8">
                            <input type="password" class="form-control" id="user_pwd" name="password"
                                   placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userPasswordAgain" class="control-label col-md-4">密码确认</label>

                        <div class="col-md-8">
                            <input type="password" class="form-control" id="userPasswordAgain" placeholder="请再输入一次">
                        </div>
                    </div>
                    <div class="radio form-horizontal">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <label>
                                <input type="radio" name="category" id="optionsRadios1" value="business" checked>
                                商家用户
                            </label>
                        </div>
                        <div class="col-md-4">
                            <label>
                                <input type="radio" name="category" id="optionsRadios2" value="customer">
                                个人用户
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-default btn-lg">注册用户</button>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-6"></div>
    </div>
</div>
</body>
</html>
