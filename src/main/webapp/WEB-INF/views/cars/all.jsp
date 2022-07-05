<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Cars</title>
</head>
<body>
<table>
  <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVER</td>
    <td>DELETE</td>
  </tr>
  <jsp:useBean id="cars" scope="request" type="java.util.List"/>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name}" /><br>
        </c:forEach>
      </td>

      <td>
        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
          Delete this car
        </a>
      </td>
    </tr>
  </c:forEach>
</table>
<form method="get" action="${pageContext.request.contextPath}/index">
  <button type="submit">Back</button>
</form>
</body>
</html>
