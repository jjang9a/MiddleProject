<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form id="payFrm" action="payAdd.do" method="post">
<table class= "table">
	<tbody>
		<tr>
		<td align="center" colspan="2">
			
			<td><input type="hidden" name="uid" value="${loginUser.userId}"></td>
			<td>충전금액</td>
			<td><input type="text" name="pay"></td>
			
			<td><input type="hidden" name="why" value="출발페이충전"></td>
		</tr>
		<tr>	
			<td align="center" colspan="2"><input class="btn btn-primary" type="submit" id="modBtn" value="충전"></td>
		</tr>
	</tbody>

</table>




</form>

<script>
//수정
    document.querySelector("#modBtn").addEventListener('click',function(){
        let payFrm = document.querySelector('#payFrm');
        let uid = document.querySelector('input[name="uid"]').value;
        let pay = document.querySelector('input[name="pay"]').value;
        let why = document.querySelector('input[name="why"]').value;

        payFrm.submit();


    })

</script>

