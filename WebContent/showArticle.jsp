<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@page import="java.util.*,bbs2.*" %>
<jsp:useBean id="article" type="bbs2.Article" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML 
xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>bbs</TITLE>
<LINK href="index_css/style_1_common.css" 
rel="stylesheet" type="text/css">
<LINK href="index_css/style_1_forum_forumdisplay.css" 
rel="stylesheet" type="text/css">
<LINK id="css_extstyle" href="index_css/style.css" 
rel="stylesheet" type="text/css">
<SCRIPT src="static/js/forum.js?GRY" type="text/javascript"></SCRIPT>
</HEAD>
<body>
<DIV id="hd">
  <DIV class="wp">
    <DIV class="hdc cl">
      <H2><IMG alt="BBS" src="index_css/logo.jpg" 
border="0"></H2>
      <FORM id="lsform" onSubmit="pwmd5('ls_password');return lsSubmit();" action="" method="post" autocomplete="off">
        <DIV class="fastlg cl"><SPAN id="return_ls" style="display: none;"></SPAN>
          <DIV class="y pns">
            <TABLE cellspacing="0" cellpadding="0">
              <TBODY>
                <TR>
                  <TD>用户名</TD>
                  <TD><INPUT name="username" tabindex="901" class="px vm" id="ls_username" type="text" autocomplete="off"></TD>
                </TR>
                <TR>
                  <TD><LABEL class="z psw_w" for="ls_password">密码</LABEL></TD>
                  <TD><INPUT name="password" tabindex="902" class="px vm" id="ls_password" type="password" autocomplete="off"></TD>
                  <TD class="fastlg_l"><BUTTON tabindex="904" class="pn vm" style="width: 75px;" 
      type="submit"><EM>登录</EM></BUTTON></TD>
                  <TD>&nbsp;<A class="fastlg_l" href="http://bbs.cupl.edu.cn/member.php?mod=9xYpZFyVmDSeQ2aT">
                    <BUTTON tabindex="904" class="pn vm" style="width: 75px;"><EM>注册</EM></BUTTON>
                    </A></TD>
                </TR>
              </TBODY>
            </TABLE>
            <INPUT name="quickforward" type="hidden" value="yes">
            <INPUT name="handlekey" type="hidden" value="ls">
          </DIV>
        </DIV>
      </FORM>
    </DIV>
    <DIV id="nv">
      <UL>
        <LI class="a" ><font color="#ffffff" size="4">&nbsp;论&nbsp;坛&nbsp;</font><SPAN>BBS</SPAN></LI>
      </UL>
    </DIV>    
  </DIV>
</DIV>
</STYLE>
  <DIV class="area" id="diynavtop"></DIV>
  <DIV class="bm cl" id="pt"></DIV>
  <DIV class="wp"></DIV>
    <DIV class="area" id="diy1"></DIV>
  <DIV class="boardnav">
    <DIV class="wp cl ct2" id="ct">
      <DIV class="mn">
        
        <DIV class="bm bw0 pgs cl" id="pgt"><SPAN id="fd_page_top">
          <DIV class="pg"><STRONG>1</STRONG>
            <LABEL>
              <INPUT name="custompage" title="输入页码，按回车快速跳转" class="px" onKeyDown="if(event.keyCode==13) {window.location='forum.php?mod=forumdisplay&amp;fid=240&amp;page='+this.value;; doane(event);}" type="text" size="2" value="1">
              <SPAN title="页"> / 1000 页</SPAN></LABEL>
            <A class="nxt" href="">下一页</A></DIV>
         </SPAN> <SPAN class="pgb y"><A>上一页</A></SPAN> <A title="发新帖" href="post.jsp"><IMG src="index_css/pn_post.png"></A></DIV>
        <DIV class="tl bm bmw" id="threadlist">
          <DIV class="th">
            <TABLE cellspacing="0" cellpadding="0">
              <TBODY>
                <TR>
                  <TH colspan="2"> <DIV class="tf">全部主题</DIV></TH>
                  <TD class="by">作者</TD>
                  <TD class="num">回复</TD>
                  <TD class="by">发表时间</TD>
                </TR>
              </TBODY>
            </TABLE>
          </DIV>
          <DIV class="bm_c"> 
           
              <TABLE id="threadlisttableid" cellspacing="0" cellpadding="0" summary="forum_240">
                  <%
                  Iterator<Article> it = article.getList().iterator();
                  while(it.hasNext()){ 
                  Article a = it.next();
                  %>
                  <TR>
                    <TD class="icn"><IMG src="index_css/folder_common.gif"></TD>
                    <TD class="common"><A href="show?id=<%= a.getId() %>"><%= a.getTitle() %></A></TD>
                    <TD class="by"><%= a.getWriter()%></TD>
                    <TD class="num">100</TD>
                    <TD class="by"><%= a.getTime() %></TD>
                  </TR>  
              <%} %>
                                      
              </TABLE>
          </DIV>
        </DIV>
        <SCRIPT src="static/js/autoloadpage.js?GRY" type="text/javascript"></SCRIPT>
        <DIV class="bm bw0 pgs cl"><SPAN id="fd_page_bottom">
          <DIV class="pg"><STRONG>1</STRONG>
            <LABEL>
              <INPUT name="custompage" title="输入页码，按回车快速跳转" class="px" onKeyDown="if(event.keyCode==13) {window.location='forum.php?mod=forumdisplay&amp;fid=240&amp;page='+this.value;; doane(event);}" type="text" size="2" value="1">
              <SPAN title="页"> / 1000 页</SPAN></LABEL>
            <A class="nxt" href="">下一页</A></DIV>
          </SPAN> 
          <SPAN class="pgb y"><A href="">上一页</A></SPAN></DIV>
      </DIV>
    </DIV>
  </DIV>
</body></HTML>

