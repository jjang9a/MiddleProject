<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	 
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
<!-- 사이드바 -->
		  <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">관리자 모드</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="" style="color:black;">공지사항</a>
                    <hr>

                     <a href="faq.do" style="color:black;">자주 묻는 질문(FAQ)</a>
                    <hr>
                     <a href="scManagerList.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                     <hr>
                     <p style="margin-bottom:0;"><a href="" style="color:black;">상품등록</a></p>
                     <p style="margin-bottom:0;"><a href="" style="color:black; font-size: 13px;">&nbsp;&nbsp;패키지 상품등록</a></p>
                     <p><a href="" style="color:black; font-size: 13px;">&nbsp;&nbsp;기타 상품등록</a></p>
					<hr>
                     <a href="" style="color:black;">연락처 &#183; 위치 안내</a>                    
                 </div>
            </div>
<!-- 사이드바 종료 -->   
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
								<td><input style="width: 500px" type="text" name="id" value="관리자" readonly></td>
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



