<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import="java.util.List" %>
<%



	//PhoneDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();
	
	//전체 리스트를 가져온다

	String id = request.getParameter("id");
	/*
	String name = request.getParameter("name");
	String hp = request.getParameter("HP");
	String company = request.getParameter("company");
	PersonVo personvo = new PersonVo(str, name, hp, company);*/
	int str = Integer.parseInt(id);
	
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[PhoneBook1]</h1>
	
	<h2>전화번호 업데이트</h2>
	
	<p>
		전화번호를 업데이트 하려면<br>
		아래 항목을 기입하고 "수정하기" 버튼을 클릭하세요
	
	<form action="./update.jsp" method = "get">
		이름(name): <input type="text" name="name" value="<%=phoneDao.getPerson(str).getName() %>"><br>
		핸드폰(hp): <input type="text" name="HP" value="<%= phoneDao.getPerson(str).getHp() %>"><br>
		회사(company): <input type="text" name="company" value="<%= phoneDao.getPerson(str).getCompany() %>"> <br>
		아이디(id): <input type="text" name="id" value="<%= str %>"><br>
		<button type = "submit">수정하기</button>
		
	</form>	
</body>
</html>