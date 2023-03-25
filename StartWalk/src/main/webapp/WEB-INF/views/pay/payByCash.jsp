<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
h4, h5, p{
text-align : center;
}
hr{
margin-top : 30px;
}
p{
font-size : smaller;
}
.link{
margin : 50px;
}
</style>

<div style="margin: 100px auto 100px auto; width: 1000px; align:center;">
<h4>주문번호 [${orderId }]</h4>
<h5 style="color:orange">주문 완료되었습니다</h5>
<br>
<h5>입금예정액 : <fmt:formatNumber pattern="###,###,###" value="${realTotal }" />원</h5>
<div class="link" align="center">
<a href ="main.do"><input class="btn btn-primary" type="submit" value="메인으로" style="font-size:12px"></a>
<a href ="orderList.do"><input class="btn btn-primary" type="submit" value="내구매목록" style="font-size:12px"></a>
</div>
<hr>
<p>국민은행 : 11111-2222-33333 (예금주 : 일상의 출구가되는 발걸음)<br>
신한은행 : 11111-2222-33333 (예금주 : 일상의 출구가되는 발걸음)<br>
대구은행 : 11111-2222-33333 (예금주 : 일상의 출구가되는 발걸음)<br>