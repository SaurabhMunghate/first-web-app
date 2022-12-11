<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
<H1>Welcome ${name}</H2>
<div>
Your Todos are
${todos}
</div>
<div>
Your Todo's are
<ol>
<c:forEach items="${todos}" var="todo">
   <li>${todo.name}</li>
</c:forEach>
</ol>
</div>
</body>
</html>