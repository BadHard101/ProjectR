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
        padding: 1% 3%;
        margin-top: 1%;
        margin-bottom: 2%;
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
        <h3>Практика. Этап VIII: Пересчет рейтинга биграмм обновленного ключа</h3>
        <p>
            Пришла пора обнулить рейтинг биграмм и пересчитать его с учетом нового ключа так же, как на этапе IV. Следующий
            шаг предпринимается исходя из того, улучшился ли рейтинг биграмм: если он остался тем же или ухудшился – буквы
            ключа возвращаются на исходные места, и частоты биграмм восстанавливаются из сохраненного ранее словаря; если же
            рейтинг биграмм улучшился (т. е. стал меньше предыдущего) – логическая флаг-переменная изменяет свое значение,
            новый рейтинг биграмм заносится в резервную переменную, шаг соседства устанавливается на единицу.
        </p>

        <#if openPracLable??>
            <h2 style="color: #4B0082">${openPracLable}</h2>
        </#if>
        <form action="/check_Level6_practice8" method="post" class="mt-4 mb-4">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я понял!</button>
        </form>

        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</div>

<#include "../../footer.ftlh">
