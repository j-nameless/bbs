<%@ page language="java" pageEncoding="utf8"%>
<%
String id = request.getParameter("id");
%>
<span id="time" style="background:red">5</span>秒钟后自动跳转，如果不跳转，请点击下面链接

<script language="JavaScript1.2" type="text/javascript">

</script>


<a href="showArticle.jsp">主题列表</a>
<script type="text/javascript">
	delayURL("showArticle.jsp");
</script>