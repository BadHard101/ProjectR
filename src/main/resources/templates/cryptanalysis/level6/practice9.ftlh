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
        <h3>Практика. Этап IX: Проверка наличия успешной перестановки при проходе</h3>
        <p>
            На этом этапе работа выходит из цикла for, но не из бесконечного цикла: тут необходимо выполнить проверку
            логической флаг-переменной – если ее значение после выхода из цикла for не изменилось, нужно увеличить шаг
            соседства на единицу (не забывая про ограничение в длину алфавита).
        </p>
        <p>
            После выхода из бесконечного цикла изначальный ключ претерпевает многократные перестановки, проверки и
            пересчет
            рейтингов биграмм. Как результат – полученный ключ должен расшифровывать изначальный шифротекст.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level6_practice9" method="post" class="mt-4">
            <h3>Задания:</h3>
            <div class="form-group">
                <label for="question1">
                    Выведите итоговый ключ, высчитанный программой.
                </label>
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

            <div class="form-group">
                <label for="question2">
                    Напишите первые 12 букв расшифрованного текста.
                </label>
                <input style="color: whitesmoke; background-color: rgba(84,91,175,0.5); border:rgba(84,91,175,0.5);"
                       type="text" id="question2" name="answer2" class="form-control"
                       <#if answers??>value="${answers.getAnswer2()}"</#if>>
                <#if result??>
                    <#if result[1]>
                        <span style="color: #4b0082">Верно</span>
                    <#else>
                        <span style="color: #e80101">Неверно</span>
                    </#if>
                </#if>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">
                Проверить
            </button>
        </form>

        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</div>

<#include "../../footer.ftlh">
