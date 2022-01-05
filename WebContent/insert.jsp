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
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//전송된 값을 vo객체로 만든다
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo.toString());
	
	//즈~장
	phoneDao.personInsert(personVo);
	
	
	
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
      <h1>[phonebook1]</h1>
      
      <h2>전화번호 리스트</h2>
      
      <p>입력한 정보 내역입니다.</p>
      
      <% 
      for(int i=0; i<personList.size(); i++){
      %>
      
         <table border = "1">
            <tr>
               <td>이름(name)</td>
               <td><%=personList.get(i).getName()%></td>
            </tr>
            <tr>
               <td>핸드폰(hp)</td>
               <td><%=personList.get(i).getHp()%></td>
            </tr>
            <tr>
               <td>회사(company)</td>
               <td><%=personList.get(i).getCompany()%></td>
            </tr>
         
         </table>
         <br>
      
      <%
      }
      %>
      
      <a href="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 등록폼</a>
      <a href="./writeForm.jsp">전화번호 등록폼(주소수정)</a>
</body>
</html>
