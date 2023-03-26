<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../managerService/sidebarManager.jsp" %>

<style>
  .answer {
    display: none;
    padding-bottom: 30px;
  }
  #faq-title {
    font-size: 25px;
  }
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  .question {
    font-size: 19px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .question:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
  }
</style>

<div style="width: 750px; float:left; margin-left: 30px; padding:30px;">
<span id="faq-title" style="font-weight:700; color:rgb(1, 148, 8);">자주 묻는 질문(FAQ)</span>
<div class="faq-content">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>'HTML'이란 무엇인가요?</span></button>
  <div class="answer" id="ans-1">하이퍼텍스트 마크업 언어(HyperText Markup Language)입니다.</div>
</div>
<div class="faq-content">
  <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>'CSS'란 무엇인가요?</span></button>
  <div class="answer" id="ans-2">캐스케이딩 스타일 시트(Cascading Style Sheets)입니다.</div>
</div>
<div class="faq-content">
  <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>'JavaScript'란 무엇인가요?</span></button>
  <div class="answer" id="ans-3">자바스크립트는 객체(Object)를 기초로 하는 스크립트 프로그래밍 언어입니다.</div>
</div>

<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>

</div>

<div style="clear: both;">
</div>

<!-- body end -->
</div>