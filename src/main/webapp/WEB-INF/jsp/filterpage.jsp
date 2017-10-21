<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Filtered list of users</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<center>
    <h1>Filtered list of books</h1>
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Author</th>
            <th width="120">Description</th>
            <th width="120">ISBN</th>
            <th width="120">PrintYear</th>
            <th width="40">ReadAlready</th>
            <th width="60">Read</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${books}" var="book">
            <c:url var="editUrl" value="books/edit?id=${book.id}" />
            <c:url var="readUrl" value="books/read?id=${book.id}" />
            <c:url var="deleteUrl" value="books/delete?id=${book.id}" />
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.description}</td>
                <td>${book.ISBN}</td>
                <td>${book.printYear}</td>
                <td>${book.readAlready}</td>
                <td><a href="${readUrl}">Read</a></td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <c:url var="mainUrl" value="/books" />
    <c>
        Return to full list of books. <a href="${mainUrl}">Return</a>
    </c>


</center>

</body>
</html>