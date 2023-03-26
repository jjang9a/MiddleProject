<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div style="margin: 100px auto 100px auto; width: 1000px;">
<!-- 사이드바 -->

            <hr style="margin-top: 120px; margin-bottom: 0;">
            <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">마이페이지</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="orderList.do" style="color:black;">내 구매목록</a>
                    <hr>
                     <a href="payList.do" style="color:black;">출발페이</a>
                    <hr>
                    <a href="couponList.do" style="color:black;">쿠폰 및 적립금</a>
                    <hr>
                    <a href="senderList.do" style="color:black;">쪽지함</a>
                    <hr>
                     <a href="scWriteForm.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                     <a href="userUpdateCheck.do" style="color:black;">회원정보 수정</a>
                    
                 </div>
            </div>

<section>	
<div id="ck" style="width:300px; float: left; margin-top : 140px; margin-left : 220px;">
	<form action='userUpdateForm.do' method='post' >
		<table style="margin-left:40px; border:none; text-align:center;">
			<tr>
				<th>비밀번호 입력</th>
			</tr>
			<tr>
				<td><input type='password' name='pwcheck' style="margin-top:10px; margin-bottom:10px;">
				<td>
			</tr>
			<tr>
				<td><button class="btn btn-sm btn-dark rounded py-2 px-4" type='submit' name='submit'>확인</button></td>
			</tr>
		</table>
	</form>
</div>
</section>	
<div style="clear: both;"></div>
</div>

<script>
	
<%-- 	<% String msg = (String) request.getAttribute("message"); %>
	<%
		if(msg != ""){
	%>
		alert(<%=msg %>)
	<%
		}
	%> --%>
	if('${message}' != ''){
		alert('${message}');
	}
/* 	document.querySelector('form').addEventListener('click', function(e) {
		e.preventDefault();
		let check = document.querySelector('input[name="pwcheck"]').value;
		let pw = $
		{
			oldInfo.userPasswd
		}

		if (check == pw) {
			location.href = "updeteUserForm.do"
		} else {
			alert('비밀번호가 일치하지 않습니다')
			check = '';
		}
	}) */
</script>