<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html ng-app="routeModule">
<head>
    <title>首页</title>
    <%--<base href="<%=basePath%>">--%>
    <meta content="telephone=no,email=no" name="format-detection">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="http://g.tbcdn.cn/mtb/lib-flexible/0.3.4/??flexible_css.js,flexible.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/angular.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/angular-ui-router.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jsp/app.js"></script>
    <script type="text/javascript">
        angular.element(document.getElementsByTagName('head')).append(angular.element('<base href="' + window.location.pathname + '" />'));
    </script>
</head>
<body >
    <div class="main">
        <div class="vav-div">
            <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">豆制品</a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active dropdown" >
                            <a href="#"class="dropdown-toggle" data-toggle="dropdown">货物记录<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="cargo">原料消耗</a></li>
                                <li><a href="#">添加进货</a></li>
                                <li><a href="#">查看货存</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">账单信息 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="account">添加账单</a></li>
                                <li><a href="#">查看账单</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">日常缴费 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="spend">电费</a></li>
                                <li><a href="#">天然气费</a></li>
                                <li><a href="#">汽费</a></li>
                                <li><a href="#">水费</a></li>
                                <li><a href="#">房租费</a></li>
                                <li class="divider"></li>
                                <li><a href="#">另一个分离的链接</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">员工考勤 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="employ">添加记录</a></li>
                                <li><a href="#">查看考勤</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        </div>
        <div ui-view>
        </div>
    </div>
</body>
</html>
