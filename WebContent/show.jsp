<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ page import="bbs2.*,java.sql.*,java.util.*" %>
<jsp:useBean id="article2" type="bbs2.Article" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
<META http-equiv="MSThemeCompatible" content="Yes"> <LINK href="show/style_1_common.css" 
rel="stylesheet" type="text/css"><LINK href="show/style_1_forum_viewthread.css" 
rel="stylesheet" type="text/css"><LINK id="css_extstyle" href="show/style.css" 
rel="stylesheet" type="text/css">

 </HEAD> 
<BODY class="pg_viewthread" id="nv_forum" onkeydown="if(event.keyCode==27) return false;">

<DIV class="btda" id="fjump_menu"></DIV>
<DIV id="hd">
<DIV class="wp">
<DIV class="hdc cl">

<H2><A title="BBS" href="http://bbs.cupl.edu.cn/"><IMG alt="BBS" src="show/logo.png" 
border="0"></A></H2>

<SCRIPT src="static/js/logging.js?GRY" type="text/javascript"></SCRIPT>
 
<FORM id="lsform" action="member.php?mod=logging&amp;action=login&amp;loginsubmit=yes&amp;infloat=yes&amp;lssubmit=yes" 
method="post">
<DIV class="fastlg cl"><SPAN id="return_ls" style="display: none;"></SPAN> 
<DIV class="y pns">
<TABLE cellspacing="0" cellpadding="0">
  <TBODY>
  <TR>
        <TD><LABEL class="z psw_w" for="ls_password">用户名</LABEL></TD>
</TD>
    <TD><INPUT name="username" tabindex="901" class="px vm" id="ls_username" type="text" ></TD>
    
</TR>
  <TR>
    <TD><LABEL class="z psw_w" for="ls_password">密码</LABEL></TD>
    <TD><INPUT name="password" tabindex="902" class="px vm" id="ls_password" type="password"></TD>
    <TD class="fastlg_l"><BUTTON tabindex="904" class="pn vm" style="width: 75px;" 
      type="submit"><EM>登录</EM></BUTTON></TD>
    <TD><A href=""><BUTTON tabindex="904" class="pn vm" style="width: 75px;"><EM>注册</EM></BUTTON></A></TD></TR></TBODY></TABLE>
      </DIV></DIV></FORM>
<SCRIPT src="static/js/md5.js?GRY" type="text/javascript"></SCRIPT>
 </DIV>
<DIV id="nv">
</DIV>
 </DIV></DIV>
<DIV class="area" id="diynavtop"></DIV>
<DIV class="bm cl" id="pt"></DIV>
 
<DIV class="wp">
<DIV class="area" id="diy1"></DIV></DIV>
<DIV class="pgs mbm cl " id="pgt">
<DIV class="pgt"></DIV><SPAN class="y pgb"><A href="http://bbs.cupl.edu.cn/forum.php?mod=forumdisplay&amp;fid=240&amp;page=1">返回列表</A></SPAN> 
<A href="post.jsp"><IMG alt="发新帖" src="show/pn_post.png"></A></DIV>
<DIV class="pl bm" id="postlist">
<%if(article2.getList().size() >0 ) {%>
<TABLE cellspacing="0" cellpadding="0">
  <TBODY>
  <TR>
    <TD class="plc ptm pbn vwthd">
      <H1 class="ts"><SPAN id="thread_subject"><%= article2.getList().get(0).getTitle() %></SPAN> </H1></TD></TR></TBODY></TABLE>
<TABLE class="ad" cellspacing="0" cellpadding="0">
  <TBODY>
  <TR>
    <TD class="pls"></TD>
    <TD class="plc"></TD></TR></TBODY></TABLE>
<DIV id="post_11532642">
<TABLE class="plhin" id="pid11532642" cellspacing="0" cellpadding="0" summary="pid11532642">
  <TBODY>
  <TR>
    <TD class="pls" rowspan="2">
      <DIV class="pi">
      <DIV class="authi"><%= article2.getList().get(0).getWriter() %></DIV></DIV>
      <DIV>
      <DIV class="avatar"><IMG src="show/05_avatar_middle.jpg"></DIV></DIV></DIV>
      </TD>
    <TD class="plc"><DIV class="pct">

      <DIV class="pcb">  
      <DIV class="t_fsz">
      <TABLE cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD class="t_f" id="postmessage_11532642">
            <DIV align="left"><FONT style="color: rgb(62, 62, 62);">
            <%= article2.getList().get(0).getCont() %>
            </FONT></DIV>
           </TD></TR></TBODY></TABLE></DIV>
      </DIV></DIV></TD></TR>
  <TR>
    <TD class="plc plm">&nbsp;</TD></TR>
  <TR id="_postposition11532642"></TR>
  <TR>
    <TD class="pls"></TD>
    <TD class="plc" style="overflow: visible;">
      <DIV class="po hin">
      <DIV class="pob cl"><EM><A  href="reply.jsp?id=<%=article2.getList().get(0).getId() %>&rootid=<%= article2.getList().get(0).getRootId() %>">回复</A> 
      </EM>
       </DIV></DIV></TD></TR>
  </TBODY></TABLE></DIV>
  <%} %>
  <%
  for(int i=1;i<article2.getList().size();i++){
  %>
<DIV>
<TABLE class="plhin"cellspacing="0" cellpadding="0">
  <TBODY>
  <TR>
    <TD class="pls" rowspan="2">
      <DIV class="pls favatar" id="favatar11532671">
      <DIV class="pi">
      
      
      <DIV class="authi"><%= article2.getList().get(i).getWriter() %></DIV></DIV>
      <DIV class="p_pop blk bui card_gender_" id="userinfo11532671" style="margin-top: -11px; display: none;">
      </DIV>
      <DIV>
      
      <DIV class="avatar"><IMG src="show/89_avatar_middle.gif"></DIV></DIV></DIV></TD>
      
      
    <TD class="plc">
      <DIV class="pi"></DIV>


      <DIV class="t_fsz">
      <TABLE cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD class="t_f">
          <%= article2.getList().get(i).getCont() %>
          </TD></TR></TBODY></TABLE></DIV>
      </TD></TR>
</TBODY></TABLE></DIV>
<%} %>
<DIV class="pl" id="postlistreply">
  <DIV class="viewthread_table" id="post_new" 
style="display: none;"></DIV></DIV></DIV>
<DIV class="pgs mtm mbm cl"><SPAN class="pgb y"><A href="http://bbs.cupl.edu.cn/forum.php?mod=forumdisplay&amp;fid=240&amp;page=1">返回列表</A></SPAN> 
  <A title="发新帖" id="newspecialtmp"href="index.jsp"><IMG alt="发新帖" src="show/pn_post.png"></A> 
</DIV>
<DIV class="area" id="diyfastposttop"></DIV>
 </BODY></HTML>