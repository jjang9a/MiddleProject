<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
	<table class ="table">
	<
	<c:forEach var="mate" items="${info}">
	<tr>
		<td>글번호</td> <td>${mate.userId }</td>
		
	</c:forEach>
	
	</table>