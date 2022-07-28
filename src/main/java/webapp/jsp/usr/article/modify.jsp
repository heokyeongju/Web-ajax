<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="../common/head.jspf"%>
<section>
    <div class="container px-3 mx-auto">
<form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">
    <div>
        번호 :  ${article.id}
    </div>

    <div>
        제목 : <input name="title" type="text" maxlength="50" placeholder="제목을 입력해주세요." value="${article.title}" />
    </div>

    <div>
        내용 : <input name="body" type="text" maxlength="300" placeholder="내용을 입력해주세요." value="${article.body}" />
    </div>
    <br>
    <div>
        <div>
            <input style="color : deeppink;" type="submit" value="수정" />
        </div>
    </div>
</form>
    </div>
</section>
<%@ include file="../common/foot.jspf"%>

<script>
    function ArticleSave__submitForm(form) {
        form.title.value = form.title.value.trim();
        if ( form.title.value.length == 0 ) {
            alert('제목을 입력해주세요.');
            form.title.focus();
            return;
        }
        form.body.value = form.body.value.trim();
        if ( form.body.value.length == 0 ) {
            alert('내용을 입력해주세요.');
            form.body.focus();
            return;
        }
        form.submit();
    }
</script>