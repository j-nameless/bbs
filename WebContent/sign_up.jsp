<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0028)http://reg.muguazx.com:8001/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<link href="sign_up/css.css" rel="stylesheet" type="text/css">
</head>
<body onload="refresh()">
<br>
<br>

<!--头部结束-->
<div class="head"><i>欢迎注册bbs</i></div>
<!--head-->
<form name="register" method="post" action="http://reg.muguazx.com:8001/Index.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="register">
  <div class="w">
    <div class="reg">
      <dl>
        <dd>
          <table style="width:560px;">
            <tbody>
              <tr>
                <td class="tit"><strong>账号 ：</strong></td>
                <td class="input"><input type="text" name="username" onfocus="show(&#39;r1&#39;),show_msg(1);" onblur="hidd(&#39;r1&#39;),checkPassport(1);" value="" tabindex="1"></td>
                <td class="txt"><div id="z1">由5-15位小写英文字母及数字组成</div>
                  <div id="m1"></div></td>
              </tr>
            </tbody>
          </table>
          <table style="width:560px;">
          </table>
          <table style="width:560px;">
            <tbody>
              <tr class="bor_01">
                <td class="tit"><strong>密码 ：</strong></td>
                <td class="input"><input type="password" name="passwd" maxlength="16" onkeyup="checkPasswdonkeyup2(2),pwStrength(this.value);" onfocus="show(&#39;r2&#39;),show_msg(2);" onblur="hidd(&#39;r2&#39;),checkPasswdonkeyup2(2),pwStrength(this.value);" tabindex="2"></td>
                <td class="txt"><div id="z2">由5-15位英文字母及数字组成</div>
                  <div id="m2"></div></td>
              </tr>
            </tbody>
          </table>
          <table style="width:560px;">
            <tbody>
              <tr>
                <td class="tit"><b>确认密码：</b></td>
                <td class="input"><input type="password" name="repeatpasswd" maxlength="16" onpaste="return false;" onfocus="show_msg(3);" onblur="checkrepeatPasswdonkeyup2(3);" tabindex="3"></td>
                <td class="txt"><div id="z3"></div>
                  <div id="m3"></div></td>
              </tr>
            </tbody>
          </table>
          <table style="width:560px;">
            <tbody>
              <tr>
                <td class="tit">&nbsp;</td>
                <td class="input">&nbsp;</td>
                <td class="txt">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          <table>
            <tbody>
              <tr>
                <td class="tit">&nbsp;</td>
                <td class="input">&nbsp;</td>
                <td class="txt" align="left">&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </dd>
        <dd>&nbsp; </dd>
        <dd>
          <table>
            <tbody>
              <tr>
                <td><center>
                    <input type="submit" name="Submit" value="注册账号" tabindex="15">
                  </center></td>
              </tr>
            </tbody>
          </table>
        </dd>
      </dl>
    </div>
  </div>
</form>
<!--正文结束-->

<div style="width:888px;margin:20px auto;clear:both"></div>

<!--底部结束--> 
<font color="white"></font>
<div style="display:none"> </div>
</body>
</html>