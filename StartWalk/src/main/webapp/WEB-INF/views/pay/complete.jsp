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

<div style="margin: 200px auto 200px auto; width: 1000px; align:center;">
<h4>주문번호 [${orderId }]</h4>
<h5 style="color:orange">주문 완료되었습니다</h5>
<br>
<div class="link" align="center">
<a href ="main.do"><input class="btn btn-primary" type="submit" value="메인으로" style="font-size:12px"></a>
<a href ="orderList.do"><input class="btn btn-primary" type="submit" value="내구매목록" style="font-size:12px"></a>
</div>
</div>