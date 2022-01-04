<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>


<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[phonebook1]</h1>
	
	<h2> 전화번호 리스트 </h2>
	
	<P>입력한 정보 내역입니다.</P>
	<%for(int i = 0; i<personList.size(); i++){%>
		
	<table border ="1">
		<tr>
			<td>이름(name)</td>
			<td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(HP)</td>
			<td><%=personList.get(i).getHp() %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personList.get(i).getCompany() %></td>
		</tr>
	
	
	</table>	
	<br>
		
		
		
		
	
	
	
	
	
	<%
	}
	%>
	<a href="">전화번호 등록폼</a>
	<table border ="1">
		<tr>
			<td>이름(name)</td>
			<td>이효리</td>
		</tr>
		<tr>
			<td>핸드폰(HP)</td>
			<td>010-1111-1111</td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td>010-1111-1111</td>
		</tr>
	
	
	</table>
		
</body>
</html>