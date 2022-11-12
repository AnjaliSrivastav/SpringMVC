<%@ page import="java.util.List" %>
<%@ page import="java.util.function.Consumer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
  <h1>This is Home Page</h1>
  <h1>Called By HomeController</h1>
  <h1>url : /home</h1>

    <%
        String name = (String)request.getAttribute("name");
        Integer id = (Integer) request.getAttribute("id");
        List<String> friendList = (List<String>)request.getAttribute("friendList");
        //Consumer<String> c = s->System.out.println(s);
    %>

  <h1>Name is : <%=name%></h1>
  <h1>Id is : <%=id%></h1>
  <h1>My Friends are : <%=friendList%></h1>
</body>
</html>
