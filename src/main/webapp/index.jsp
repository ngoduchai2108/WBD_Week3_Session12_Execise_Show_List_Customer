<%@ page import="java.util.ArrayList" %>
<%@ page import="com.code.Customer" %><%--
  Created by IntelliJ IDEA.
  User: admin1
  Date: 11/04/2019
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Show List Customer</title>
  </head>
  <body>
  <%
    ArrayList<Customer> listCustomer = new ArrayList<>();
    listCustomer.add(new Customer("Mai Van Hoan","1983-08-20","Ha Noi","Anh"));
    listCustomer.add(new Customer("Nguyen Van Nam","1983-08-21","Bac Giang","Anh"));
    listCustomer.add(new Customer("Nguyen Thai Hoa","1983-08-15","Nam Dinh","Anh"));
    listCustomer.add(new Customer("Tran Dang Khoa","1983-08-25","Thai Nguyen","Anh"));
    listCustomer.add(new Customer("Nguyen Dinh Thi","1983-05-20","Da Nang","Anh"));
    request.setAttribute("data", listCustomer);
  %>
  <form >
    <center>
      <h1>List Customer</h1>
    </center>
    <table border ="1" width="500" align="center">
      <tr bgcolor="00FF77">
        <th><b>Name</b></th>
        <th><b>Birthday</b></th>
        <th><b>Address</b></th>
        <th><b>Picture</b></th>
      </tr>
      <c:forEach var="rows" items="${requestScope.data}">
        <tr>
          <td>${rows.getName()}</td>
          <td>${rows.getBirthday()}</td>
          <td>${rows.getAddress()}</td>
          <td>${rows.getPicture()}</td>
        </tr>
      </c:forEach>
    </table>
  </form>
  </body>
</html>
