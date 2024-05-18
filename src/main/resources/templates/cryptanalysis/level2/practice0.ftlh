<#include "../../header.ftlh">

<#include "panel.ftlh">

<style>
    /* Стили для всплывающего окна */
    .popup {
        display: none;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(255, 255, 255, 0.5); /* Прозрачный белый фон */
        border-radius: 10px; /* Закругленные углы */
        padding: 20px;
        z-index: 1000;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Тень */
        backdrop-filter: blur(6px); /* Эффект размытия фона */
    }
</style>

<div class="mt-4">
    <h3>Практика. Этап 0: Импорт словарей эталонных частот английского языка</h3>
    <p>
        Для того, чтобы начать работу над самой программой дешифрования, необходимо в первую очередь импортировать в нее
        словари частот появления в английском языке отдельных букв и биграмм. Данные словари Вам следует взять из
        подсказок к данному заданию. Там же Вы найдете саму строку шифротекста, которую Вам предстоит расшифровать.
        Кроме того, скопируйте из программы к предыдущему уровню массив алфавита.
    </p>

    <#if openPracLable??>
        <h2 style="color: green">${openPracLable}</h2>
    </#if>
    <form action="/check_Level2_practice0" method="post" class="mt-4 mb-4">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Я понял!</button>
    </form>
</div>

<#include "../../footer.ftlh">
