<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <h4>주문번호 : [${orderId }] <br> 주문 완료되었습니다</h4> --%>
<a href="main.do">메인으로</a>
<a href="orderList.do">내 주문목록</a>
<form action="test2.do" type="get">
<input type="checkbox" value="yes" name="check">
<button>보내기</button>
</form>