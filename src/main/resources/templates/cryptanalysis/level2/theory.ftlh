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
        max-height: 100vh;
        overflow: auto;
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
    <p class="mt-4">

    <h3>Теория</h3></p>
    <p>
        Раз знакомство с шифром Цезаря прошло удачно, можно двигаться дальше. На пройденном Вами уровне было необходимо
        методом грубого перебора отыскать ключ-число, при применении которого к зашифрованному сообщению на экран
        выводились бы осмысленные слова, а не просто набор случайных букв. На этом уровне Вам предстоит написать
        программный модуль, который будет делать проверку осмысленности за Вас – назовем этот модуль, к примеру,
        detectEnglish. Он будет содержать в себе функцию isEnglish(), разделяющую расшифрованную строку на слова и
        проверяющую, есть ли среди них что-то не напоминающее белиберду.
    </p>
    <p>
        Реализация данной функции невозможна без использования словаря английских слов. Вы можете скачать его, перейдя
        по этой ссылке (https://inventwithpython.com/dictionary.txt) и нажав сочетание клавиш Ctrl+S. В нем около 45
        тысяч слов разной длины – вполне достаточно для выполнения поставленной задачи. Если доля распознанных
        английских слов и букв в тексте превышает заданные пороги, строка считается осмысленным английским текстом, а на
        выходе функции будет возвращено логическое значение True.
    </p>

    <#if openPracLable??>
        <h2 style="color: #4B0082">${openPracLable}</h2>
    </#if>
    <form action="/check_Level2_theory" method="post" class="mt-4 mb-4">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я прочитал!
        </button>
    </form>
</div>

<#include "../../footer.ftlh">