<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="44%" align="left">[编辑课程]</td>
   
    <td width="52%"align="right">
		<%----%>
       <s:a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></s:a>
       <s:a href="queryAllType.action"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></s:a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
	${applicationScope.addCourseMessage}
</table>

<s:set var="ctById" value="#session.queryByCTID"/>

<s:form  action="addOrEditCourse" method="POST">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">课程类别：</td>
	    <td width="20%"><s:textfield name="courseType.courseName" value="%{#ctById.courseName}" /></td>
	    <td width="8%">总学时：</td>
	    <td width="62%"><s:textfield name="courseType.total" value="%{#ctById.total}" /></td>
	  </tr>
	  <tr>
	    <td>课程费用：</td>
	    <td><s:textfield name="courseType.courseCost" value="%{#ctById.courseCost}"/></td>
	    <td></td>
	    <td></td>
	  </tr>
	  <tr>
	    <td>课程简介：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4"><s:textarea name="courseType.remark" cols="60" rows="10" value="%{#ctById.remark}"/></td>
	  </tr>
	</table>
</s:form>
</body>
</html>
