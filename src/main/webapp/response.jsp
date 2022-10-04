<%@ page import="java.util.LinkedList" %>
<%@ page import="tools.DataBox" %><%--
  Created by IntelliJ IDEA.
  User: Honor
  Date: 28.09.2022
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response</title>
  <style>
    <%@include file="/css/responseStyle.css"%>
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>x</th>
        <th>y</th>
        <th>r</th>
        <th>Попадание</th>
        <th>Время работы</th>
      </tr>
    </thead>
    <%
      LinkedList<DataBox> boxes = (LinkedList<DataBox>) session.getAttribute("DataBoxes"); %>

    <% for (int i = boxes.size() - 1; i >= 0; i--){%>
    <tr>
      <td> <% out.println(boxes.get(i).getX()); %> </td>
      <td> <% out.println(boxes.get(i).getY()); %> </td>
      <td> <% out.println(boxes.get(i).getR()); %> </td>
      <td> <% out.println(boxes.get(i).isWasHit()); %> </td>
      <td> <% out.println(boxes.get(i).getScriptTime() + " ms"); %> </td>
    </tr>
    <% } %>
  </table>
  <a href="index.jsp" class="beginOnIndex">Вернуться</a>
</body>
</html>
