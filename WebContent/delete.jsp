<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
//PhoneDao를 메모리에 올린다.
PhoneDao phoneDao = new PhoneDao();

/////////////////////////////////////////////////
///      저장관련
/////////////////////////////////////////////////

//파라미터값 가져오기
String id = request.getParameter("id");

//즈~장
 int x = Integer.parseInt(id);

 phoneDao.personDelete(x);
 
response.sendRedirect("./list.jsp");


/*////////////////////////////////////////////////
///      리스트 가져오기 관련
/////////////////////////////////////////////////*/

//전체 리스트를 가져온다

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