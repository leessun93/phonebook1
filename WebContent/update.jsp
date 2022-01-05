<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import="java.util.List" %>

<%
		//PhoneDao를 메모리에 올린다.
		PhoneDao phoneDao = new PhoneDao();

/////////////////////////////////////////////////
///      저장관련
/////////////////////////////////////////////////

	//파라미터값 가져오기
	String name = request.getParameter("name");
	String hp = request.getParameter("HP");
	String company = request.getParameter("company");
	String id = request.getParameter("id");
	
	int str = Integer.parseInt(id);
	//전송된 값을 vo객체로 만든다
	PersonVo personVo = new PersonVo(str, name, hp, company);
	
	//즈~장
	phoneDao.personUpdate(personVo);
	
	
	
/*////////////////////////////////////////////////
///      리스트 가져오기 관련
/////////////////////////////////////////////////*/

	//전체 리스트를 가져온다
	List<PersonVo> personList = phoneDao.getPersonList();


	//리다이렉트
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>