<#include "../../header.ftlh">

<#include "panel.ftlh">

<style>
    /* Стили для всплывающего окна */
    .popup {
        display: none;
        position: fixed;
        top: 50vh; /* 50% of the viewport height */
        left: 50vw; /* 50% of the viewport width */
        transform: translate(-50%, -50%);
        background-color: rgba(255, 255, 255, 0.5); /* Прозрачный белый фон */
        border-radius: 10px; /* Закругленные углы */
        padding: 2%; /* 2% of the .popup element's width */
        z-index: 1000;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Тень */
        backdrop-filter: blur(6px); /* Эффект размытия фона */
        word-break: normal;
        max-width: 100vw;
    }

    .popup > p {
        word-break: break-word;
    }

    .overlay {
        position: relative;
        display: inline-block;
        border-radius: 1vw; /* 1% of the viewport width */
        padding: 0 3%;
        margin-top: 2%;
        margin-bottom: 2%;
        word-break: break-word;
    }

    .overlay::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(176, 200, 253, 0.5); /* Белый цвет с прозрачностью 50% */
        z-index: -1;
        border-radius: 1.5vw; /* 1.5% of the viewport width */
        filter: blur(1vw); /* 1% of the viewport width */
    }
</style>
<div class="overlay">
<div class="mt-4">
    <h3>Практика. Этап II: Подсчет частоты букв в шифротексте</h3>
    <p></p>
    <p>
        Итак, подготовительные работы выполнены, можно приступать к взлому шифра. Первым делом необходимо подсчитать,
        сколько раз каждая буква встречается в заданном шифротексте – это нужно для того, чтобы при генерировании
        первичного ключа не «тыкать пальцем в небо», а сразу же использовать статистические данные для минимизации
        времени последующего подгона. Для этого создайте новый массив, подсчитайте сначала количество появлений каждой
        буквы алфавита в шифротексте, а затем их частоту (считается как (
        &lt;кол-во букв&gt; / &lt;длина шифротекста&gt; * 100)).
    </p>
    <p>
        <b>Задание:</b> Вычислите частоты букв и выведите частоту появления в шифротексте буквы «f» (результат округлите
        до тысячных).
    </p>

    <button id="openMenuButton" class="btn btn-primary"
            style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
    </button>

    <form action="/check_Level6_practice2" method="post" class="mt-4">
        <div class="form-group">
            <label for="question1">Ответ:</label>
            <input style="color: whitesmoke; background-color: rgba(84,91,175,0.5); border:rgba(84,91,175,0.5);"
                    type="text" id="question1" name="answer1" class="form-control"
                   <#if answers??>value="${answers.getAnswer1()}"</#if>>
            <#if result??>
                <#if result[0]>
                    <span style="color: #4b0082">Верно</span>
                <#else>
                    <span style="color: #e80101">Неверно</span>
                </#if>
            </#if>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Проверить</button>
    </form>

    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</div>
</div>
<#include "../../footer.ftlh">
