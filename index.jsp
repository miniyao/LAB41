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


function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

	
	function delet(){	
	
		var finded = document.getElementsByName("checkbox2");
		j = 0;
		var result;
		for(i = 0;i<finded.length;i++){
			if(finded[i].checked ==true){
						
					j++;
				}
		}
		if(j>=1){
			var con = confirm("温馨提示：确定删除吗？");
			if(con==true){
				result = true;
			}
		}
		for(i = 0;i<finded.length;i++){
			if(finded[i].checked ==true && result == true){
				
				window.location.href = "<%= path %>/deleta?books.ISBN=" + finded[i].value;
			}
		}
	
	}
		function checking(){	
	
		var finded = document.getElementsByName("checkbox2");
		j = 0;
		var result;
		for(i = 0;i<finded.length;i++){
			if(finded[i].checked ==true){
						
					j++;
				}
		}
		if(j>=1){
			var con = confirm("需要查看吗？");
			if(con==true){
				result = true;
			}
		}
		for(i = 0;i<finded.length;i++){
			if(finded[i].checked ==true && result == true){
				
				window.location.href = "<%= path %>/checking?books.ISBN=" + finded[i].value;
			}
		}
	
	}
	function add(){	
		if(window.confirm("是否添加新作者？")){
			window.open('insert.jsp');
		}
		else{
		window.open('insert1.jsp');
		}
	
	}
	function update(){	

		var find = document.getElementsByName("checkbox2");
		j = 0;
		for(i = 0;i<find.length;i++){
			if(find[i].checked ==true){
					j++;
				}
		}
		if(j>=2){
			alert("只能选择一项修改！");
		}
		else{
			for(i = 0;i<find.length;i++){
				if(find[i].checked ==true){
					window.location.href = "<%= path %>/cff/getCongressById?congress.cg_id=" + find[i].value;
				}
			}
		}
	}
	
</script>
</head>

<body>
<form action="<%=basePath %>queryCongress_query" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
              
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
              
 <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
             
                
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    
                    <td class="STYLE1"><div align="center"><input type="button" value="查看信息" onclick="checking();"/></div></td>
                  </tr>
                </table></td>
                 <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
               
                    <td class="STYLE1"><div align="center"><br /></div></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                  
                    <td class="STYLE1"><div align="center"><input type="button" value="删除此书" onclick="delet()"/></div></td>
                  </tr>
                </table></td> 
                    <td class="STYLE1"><div align="center"> <input type="button" value="新增书目" onclick="add()"/></div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><br /></td>
      </tr>
    </table></td>
 
  </tr>

      	<td width="3%" height="30"  background="images/bg.gif" bgcolor="#FFFFFF">&nbsp; 
 
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
	作者名字:<input type="text" name="name" />



            
         <input type="submit" value="查询"/>
        </td>

 
  <tr>
    <td><table width="60%" border="0"  align="center"cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td width="4%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"></div></td>
            <td width="16%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ISBN</span></div></td>
            <td width="20%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书题目</span></div></td>
       
          </tr>
          
            <s:iterator value="#request.list" var="books">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><input type="radio" name="checkbox2" value="<s:property value="#books.ISBN"/>" />   </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1"><div align="center"><s:property value="#books.ISBN"/></div>  </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#books.title"/></span></div></td>

             </tr>
             
              </s:iterator>
       
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
        <td width="16"><br /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
