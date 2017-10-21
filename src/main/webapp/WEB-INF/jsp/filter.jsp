<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Filter books</title>
</head>
<body>
<center>
    <h1>Filter books</h1>
    <c:url var="saveUrl" value="filter" />
    <form:form modelAttribute="bookFilter" method="POST" action="${saveUrl}">
        <table>
            <tr>
                <td><form:label path="title">Title:</form:label></td>
                <td><form:input path="title"/></td>
            </tr>
        </table>
        <input type="submit" value="Save" />
    </form:form>

</center>
</body>
</html>