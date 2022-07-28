<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../common/head.jspf"%>

<!-- 보통 구획은 섹션으로 나눈다. -->
<section>
    <!-- container(max-width) : 너비가 너무 넓게 퍼지는 것을 막는다 + 반응형은 잃지 않는다. -->
    <!-- mx-auto : margin-left:auto; margin-right:auto; -->
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">게시물 리스트</h1>

        <ul class="mt-5">
            <c:forEach items="${articles}" var="article">
            <li class="flex">
                <a class="w-[40px] hover:underline hover:text-[deeppink]" href="/usr/article/detail/free/${article.id}">${article.id}</a>
                <a class="flex-grow hover:underline hover:text-[deeppink]" href="/usr/article/detail/free/${article.id}">${article.title}</a>
                <!-- flex-grow : 성장성 1 -->
                <a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;" class="hover:underline hover:text-[deeppink] mr-2" href="/usr/article/delete/free/${article.id}">삭제</a>
                <a class="hover:underline hover:text-[deeppink]" href="/usr/article/modify/free/${article.id}">수정</a>
            </li>
            </c:forEach>
        </ul>
    </div>
</section>
<%@ include file="../common/foot.jspf"%>