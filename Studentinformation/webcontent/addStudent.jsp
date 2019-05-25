<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 </head>
<body>


<%@page import="com.muhammedessa.StudentDao" %>
<jsp:useBean id="s" class="com.muhammedessa.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>



<%

int num = StudentDao.save(s);

if(num>0){
	response.sendRedirect("StudentAdded.jsp");
}else{
	response.sendRedirect("Studentfailed.jsp");
}


%>








</body>
</html>