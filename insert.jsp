<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<SCRIPT src="calendar.js" type="text/javascript"></SCRIPT>
		<LINK href="calendar.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>

<script type="text/javascript">


	
</script>
</head>

<body>
<form action="<%=basePath %>queryCongress_insert" name="tijiao"  method="post">




	<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
         
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
               
                </table></td>
               
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
 

 
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
           </tr>
            <td width="12%" height="22"bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书名字:</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="title" /></div></td>
          <tr><input type="hidden" name="congress.cg_id" value="<s:property value="congress.cg_id"/>"/>
           </tr>
			 <td width="20%" height="22"  bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">作者名字:</span></div></td>
        	  <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="name" /></div></td>
          <tr>
           </tr>
            <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ISBN:</span></div></td>
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"> <input type="text" name="ISBN" /></div></td>
          <tr>
           </tr>





     
 <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">出版社:</span></div></td>
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="publisher" /></div></td>
          <tr>
           </tr> <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">出版日期:</span></div></td>
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="publishdate" /></div></td>
          <tr>
           </tr> <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书价格:</span></div></td>
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="price" /></div></td>
          <tr>
           </tr> <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">作者年龄:</span></div></td>
           
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="age" /></div></td>
          <tr>
          
           </tr> <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">作者国家:</span></div></td>
           
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="text" name="country" /></div></td>
          <tr>
           </tr>
         
          <td width="28%" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"></span></div></td>
           
         
               <td height="20" bgcolor="#FFFFFF"><div align="left"><input type="submit" value="添加图书"/></div></td>
          <tr>
           </tr>
         
          
      
           
          
       
          
        </table></td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
       
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                 <tr>
                 
               	
                  </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
