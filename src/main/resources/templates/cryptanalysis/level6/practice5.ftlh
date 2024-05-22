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
    .overlay {
        position: relative;
        display: inline-block;
        border-radius: 10px;
        padding: 0 3% 0 3%;
        margin-top: 1%;
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
        border-radius: 15px; /* Задает округлые границы */
        filter: blur(10px); /* Задает размытие границ */
    }
</style>
<div class="overlay">
    <div class="mt-4">
        <h3>Практика. Этап V: Задание цикла перестановок символов ключа</h3>
        <p></p>
        <p>
            С этого этапа начинается самая сложная с точки зрения понимания и технической реализации часть. Дело в том, что
            после того, как были получены результаты первичного ключа, начинается процедура подгона ключа для улучшения
            рейтинга биграмм до тех пор, пока он не станет постоянным. Подгон выполняется путем перестановки двух
            произвольных букв ключа, после чего пересчитываются частоты биграмм, содержащих переставленные буквы.
        </p>
        <p>
            Для начала сохраните существующий рейтинг биграмм в отдельную переменную – он потребуется позже, а также
            установите логическую флаг-переменную для обозначения найденной полезной биграммы. Далее установите стартовое
            количество шагов соседства на единицу, после чего создайте бесконечный цикл, условием выхода из которого будет
            превышение количеством шагов соседства длины алфавита.
        </p>

        <#if openPracLable??>
            <h2 style="color: #4B0082">${openPracLable}</h2>
        </#if>
        <form action="/check_Level6_practice5" method="post" class="mt-4 mb-4">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я понял!</button>
        </form>

        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</div>
<#include "../../footer.ftlh">
