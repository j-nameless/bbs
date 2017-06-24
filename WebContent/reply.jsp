<%@ page pageEncoding="utf8"%>
<%@ page import="java.sql.*, bbs2.*" %>

<%
int id = Integer.parseInt(request.getParameter("id").trim());
int rootid = Integer.parseInt(request.getParameter("rootid").trim());
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>bbs</title>
<meta http-equiv="content-type" content="text/html; charset=utf8">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
</table>
<br>
<div id="jive-flatpage">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><p> <a href="index.jsp">首页</a></p>
          <p class="jive-page-title"> 主题: 回复 </p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
  <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td class="jive-icon">&nbsp;</td>
          <td class="jive-icon-label">&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  <table border="0" cellpadding="0" cellspacing="0" width="930" height="61">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                	
                	<form action="reply" method="post">
                		<input type="hidden" name="pid" value="<%=id %>"/>
                		<input type="hidden" name="rootid" value="<%=rootid %>"/>
                		标题：<input type="text" name="title"><br>
                		内容：<textarea name="cont" rows="15" cols="80"></textarea>
                		<br>
                		<input type="submit" value="回复"/>
                	</form>
                	
                </div>
              </div>
            </div>
            <div class="jive-message-list-footer">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr>
                    <td nowrap="nowrap" width="1%"><br><br></td>
                    <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td><a href="index.jsp"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="index.jsp">返回到主题列表</a> </td>
                          </tr>
                        </tbody>
                      </table></td>
                    <td nowrap="nowrap" width="1%">&nbsp;</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div></td>
        <td width="1%">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
