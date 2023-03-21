<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Clean Blog - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet"
        type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
        rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="resources/css/styles.css" rel="stylesheet" />
</head> <!-- Main Content-->
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-12 col-lg-10 col-xl-8">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>글번호</td>
                            <td><input type="text" name="book_code" value="B20230301"></td>
                        </tr>
                        <tr>
                            <td>작성자</td>
                            <td><input type="text" name="book_code" value="홍길동"></td>
                        </tr>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="book_code" value="우리의 정의란?"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td><input type="text" name="book_code" value="정의출판사"></td>
                        </tr>
                        <tr>
                            <td>작성일</td>
                            <td><textarea cols="30" rows="5" name="book_code">정의란 무엇인가...</textarea></td>
                        </tr>
                        
                        <tr>
                            <td align="center" colspan="2">
                                <input class="btn btn-primary" type="button" value="수정">
                                <input class="btn btn-warning" type="button" value="삭제"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


