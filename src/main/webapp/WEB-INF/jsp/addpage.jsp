<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<% response.setContentType("text/html; charset=UTF-8"); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adding new book</title>
	<style>
		.error {
			color: #ff0000;
			font-weight: bold;
		}
	</style>
</head>
<body>

<center>
<h1>Create new Book</h1>

<c:url var="saveUrl" value="add" />
<form:form modelAttribute="bookAttribute" method="POST" action="${saveUrl}" accept-charset="UTF-8">
	<table>
		<tr>
			<td>
				<form:label path="title">
					<spring:message text="Title"/>
				</form:label>
			</td>
			<td>
				<form:input path="title"/>
				<form:errors path="title" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label path="author">
					<spring:message text="Author"/>
				</form:label>
			</td>
			<td>
				<form:input path="author"/>
				<form:errors path="author" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label path="description">
					<spring:message text="Description"/>
				</form:label>
			</td>
			<td>
				<form:input path="description"/>
				<form:errors path="description" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label path="ISBN">
					<spring:message text="ISBN"/>
				</form:label>
			</td>
			<td>
				<form:input path="ISBN"/>
				<form:errors path="ISBN" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label path="printYear">
					<spring:message text="PrintYear"/>
				</form:label>
			</td>
			<td>
				<form:input path="printYear"/>
				<form:errors path="printYear" cssClass="error"/>
			</td>
		</tr>
	</table>
	
	<input type="submit" value="Save" />
</form:form>

	<br>
	</br>

</center>
</body>
</html>