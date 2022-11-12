<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 5/2/2022
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Help Pahe</title>
</head>
<body>
  <h1>This is Help Page</h1>
  <%
      String name = (String)request.getAttribute("name");
      Integer roll_No = (Integer) request.getAttribute("rollnumber");
      LocalDateTime now = (LocalDateTime) request.getAttribute("time");
  %>
  <%--printing using scriptlet tag--%>
 <%--<h1>Hello! My name is <%=name%></h1>
 <h1>My Roll No. is <%=roll_No%></h1>
 <h1>Date and Time is <%=now%></h1>--%>

 <%--printing using Expression Language--%>
  <h1>Hello! My name is ${name }</h1>
  <h1>My Roll No. is ${rollnumber }</h1>
  <h1>Date and Time is ${time }</h1>
<hr>

<%--Using JSTL to iterate Collection--%>
 <c:forEach var="item" items="${marks}">
    <%-- <h1>${item }</h1> --%> <%--Using Expression Language to print the values one by one--%>

     <%--We can use c:out variable of JSTL also to print values-one by one--%>
     <h1><c:out value="${item }" /></h1>

 </c:forEach>
</body>
</html>
