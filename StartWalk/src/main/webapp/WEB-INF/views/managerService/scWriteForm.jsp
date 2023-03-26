<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	 
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
            <hr style="margin-top: 120px; margin-bottom: 0;">
            
            <c:if test="${loginUser.userGrade.equals('admin') }">
				<a href="scWriteForm.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin:10px 0;">글쓰기	</a>
			</c:if>
            
            
            <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">고객센터</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                    <hr>
                     <a href="faq.do" style="color:black;">자주 묻는 질문(FAQ)</a>
                    <hr>
                     <a href="scManagerList.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                 </div>
            </div>
            <div style="float: left; margin-bottom: 50px; padding: 5px 40px;">
                <h5 style="font-size: 23px;">1:1 문의 작성</h5>
                <div style="margin-top: 20px;">
                	<table style="border-top: 3px solid black; border-bottom: 1px solid black; padding: 5px; width: 720px;" class="topspace">
                		<form action="scWrite.do" type="post">
                		<tbody>
							<tr>
								<td align="center" colspan="2">
								<td>작성자</td>
								<td><input style="width: 500px" type="text" name="id" value="id"></td>
							</tr>
							<tr>
								<td align="center" colspan="2">
								<td>제목</td>
								<td><input style="width: 500px" type="text" name="title"></td>
							</tr>
							<tr>
								<td align="center" colspan="2">
								<td>내용</td>
								<td><textarea style="width: 500px" cols="30" rows="5"
										name="text"></textarea></td>
							</tr>
							<tr>
								<td align="right" colspan="4" style="padding-right:50px;"><input class="btn btn-primary"
									type="submit" value="등록"></td>
							</tr>
                		</tbody>
							</form>
                		<tfoot style="border-bottom: 5px solid black;">
                		</tfoot>
                	</table>
                </div>
            </div>  
            
            
            

            <div style="clear: both;">
            	<div>
            		<p style="padding: 20px 30px; margin-left: 220px; margin-top: 20px; background-color: beige;">시스템 담당자: 고대준(010-9824-5252)</p>
            	</div> 
            </div>

		</div>



