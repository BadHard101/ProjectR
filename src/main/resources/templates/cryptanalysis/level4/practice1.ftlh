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
        padding: 0 3%;
        margin-top: 2%;
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
        <h3>Практика. Этап I: Импорт необходимых модулей и определение алфавита</h3>
        <br>
        <p>
            Как и на прошлых уровнях все начинается с определения констант и импорта необходимых библиотек и модулей.
            Для реализации аффинного шифра потребуется подключить написанные Вами на предыдущих уровнях модули для
            распознавания английского языка, поиска НОД и чисел, обратных по модулю. В качестве алфавита на этот раз мы
            будем использовать строку из символов английского языка (как в верхнем, так и нижнем регистре) и знаков
            препинания, включая пробел. В качестве константы шифротекста, который предстоит расшифровать, используйте
            строку ниже:
        </p>
        <p>
            U&'&lt;3dJ^Gjx'-3^MS'Sj0jxuj'G3'%j'&lt;mMMjS'g{GjMMg9j{G'g"'gG'&lt;3^MS'Sj&lt;jguj'm'P^dm{'g{G3'%jMgjug{9'GPmG'gG'-m0'P^dm{LU'5&Mm{'_^xg{9
        </p>
        <p>
            <b>Задание:</b> Введите количество символов в зашифрованном сообщении.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level4_practice1" method="post" class="mt-4">
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
            <button type="submit" class="btn btn-primary"
                    style="margin-bottom:15px; background-color: #4B0082; border: #4B0082;">Проверить
            </button>
        </form>

        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</div>
<#include "../../footer.ftlh">
