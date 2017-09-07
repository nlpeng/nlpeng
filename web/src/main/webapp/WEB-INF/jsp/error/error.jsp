<%@ page import="com.fangmaster.pc.common.utils.LogUtils" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<%
    LogUtils.logPageError(request);

    Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
    pageContext.setAttribute("statusCode", statusCode);

    String uri = (String) request.getAttribute("javax.servlet.error.request_uri");
    String queryString = request.getQueryString();
    String url = uri + (queryString == null || queryString.length() == 0 ? "" : "?" + queryString);
    pageContext.setAttribute("url", url);

    Throwable exception = (Throwable) request.getAttribute("javax.servlet.error.exception");
    request.setAttribute("exception", exception);

%>
</html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>房管家网络科技有限公司-500</title>
    <link rel="stylesheet" type="text/css" href="../static/js/bootstrap.min.css"/>
    <style>
        body{
            color: #212121;
            background: url(../static/img/whitey.jpg) repeat scroll 0 0 #fff;
            background-size: 220px 220px;
        }
        #error-page{background-color:#eeeeee;}#error-box{min-width:280px;text-align:center;margin:40px auto 20px;}#error-box h1{margin-top:40px;color:#605f5f;padding:0;}#error-box p{margin:20px 0;}

    </style>

    <!--[if lt IE 9]>
    <script src="../static/js/html5shiv.js"></script>
    <script src="../static/js/respond.min.js"></script>
    <![endif]-->
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body id="error-page">
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div id="error-box">
                <div class="row">
                    <div class="col-xs-12">
                        <div id="error-box-inner">
                            <img src="../static/img/error-500-v1.png" alt="Error 500"/>
                        </div>
                        <h1>服务器错误  500</h1>
                        <p>
                            <c:if test="${statusCode ne 404}">
                                <c:if test="${not empty exception}">
                                    <%
                                        StringWriter stringWriter = new StringWriter();
                                        PrintWriter printWriter = new PrintWriter(stringWriter);
                                        exception.printStackTrace(printWriter);
                                        pageContext.setAttribute("stackTrace", stringWriter.toString());
                                    %>
                                    <%@include file="exceptionDetails.jsp"%>
                                </c:if>
                            </c:if>
                        </p>
                        <p>
                            返回 <a href="${ctx}/index">首页</a>.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>