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

    <!-- Окно меню подсказки -->
    <div id="menu" class="popup">
        <h2>Выберите подсказку</h2>

        <div style="display: flex; flex-direction: row">
            <button id="openH1Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Подключение модулей</button>
            <button id="openH2Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Методика реализации</button>
            <button id="openH4Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Код фрагмента</button>

            <button id="closeMenuButton" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
        </div>
    </div>

    <!-- Окно -->
    <div id="H1" class="popup">
        <h2>Подключение модулей</h2>
        <p>
            Для подключения написанных Вами модулей, перенесите файлы этих модулей в одну папку с текущей программой и
            присоедините их командой import.
        </p>
        <button id="closeH1Button" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H2" class="popup">
        <h2>Методика реализации</h2>
        <p>
            Для удобства ввода большой строки можно использовать запись вида """&lt;строка&gt;""".
        </p>
        <button id="closeH2Button" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H4" class="popup">
        <h2>Код фрагмента</h2>
        <pre><code>
import &lt;модуль с функциями поиска НОД и обратного по модулю&gt;, detectEnglish

SYMBOLS = """ !"#$%&'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\] ^_`abcdefghijklmnopqrstuvwxyz{|}~"""
myMessage = """U&'&lt;3dJ^Gjx'-3^MS'Sj0jxuj'G3'%j'&lt;mMMjS'g{GjMMg9j{G'g"'gG '&lt;3^MS'Sj&lt;jguj'm'P^dm{'g{G3'%jMgjug{9'GPmG'gG'-m0'P^dm{LU'5&Mm{'_^xg{9"""</code></pre>
        <button id="closeH4Button" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
    </div>

    <script>
        const openMenuButton = document.getElementById('openMenuButton');
        const menu = document.getElementById('menu');
        const closeMenuButton = document.getElementById('closeMenuButton');

        openMenuButton.addEventListener('click', function () {
            H1.style.display = 'none';
            H2.style.display = 'none';
            H4.style.display = 'none';
            menu.style.display = 'block';
        });

        closeMenuButton.addEventListener('click', function () {
            menu.style.display = 'none';
        });

        const openH1Button = document.getElementById('openH1Button');
        const H1 = document.getElementById('H1');
        const closeH1Button = document.getElementById('closeH1Button');

        openH1Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H1.style.display = 'block';
        });

        closeH1Button.addEventListener('click', function () {
            H1.style.display = 'none';
        });

        const openH2Button = document.getElementById('openH2Button');
        const H2 = document.getElementById('H2');
        const closeH2Button = document.getElementById('closeH2Button');

        openH2Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H2.style.display = 'block';
        });

        closeH2Button.addEventListener('click', function () {
            H2.style.display = 'none';
        });

        const openH4Button = document.getElementById('openH4Button');
        const H4 = document.getElementById('H4');
        const closeH4Button = document.getElementById('closeH4Button');

        openH4Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H4.style.display = 'block';
        });

        closeH4Button.addEventListener('click', function () {
            H4.style.display = 'none';
        });
    </script>
</div>
<#include "../../footer.ftlh">
