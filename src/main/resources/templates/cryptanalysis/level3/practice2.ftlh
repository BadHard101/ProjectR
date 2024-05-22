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
        <h3>Практика. Этап II: Задание функции поиска числа, обратного по модулю</h3>
        <br>
        <p>
            Для функции поиска числа, обратного по модулю, будем использовать так называемый расширенный алгоритм
            Евклида. В этом случае стоит помнить про условие, что НОД одного из известных чисел и модуля должен быть
            равен единице.
        </p>
        <p>
            Реализуйте это условие в самом начале кода функции поиска числа, обратного по модулю – если их НОД не равен
            единице, функция возвращает значение None.
        </p>
        <p>
            <b>Задание:</b> Вернет ли функция значение None при a = 78838 и m = 245712135?
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level3_practice2" method="post" class="mt-4">
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
            <button style="margin-bottom:15px; background-color: #4B0082; border: #4B0082;"
                    type="submit" class="btn btn-primary">Проверить
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
            <button id="openH4Button" class="btn btn-primary mr-2">Код фрагмента</button>

            <button id="closeMenuButton" class="btn btn-danger">Закрыть</button>
        </div>
    </div>

    <!-- Окно -->
    <div id="H4" class="popup">
        <h2>Код фрагмента</h2>
        <pre><code>
def findModInverse(a, m):
    if gcd(a, m) != 1:
        return None</code></pre>
        <button id="closeH4Button" class="btn btn-danger">Закрыть</button>
    </div>

    <script>
        const openMenuButton = document.getElementById('openMenuButton');
        const menu = document.getElementById('menu');
        const closeMenuButton = document.getElementById('closeMenuButton');

        openMenuButton.addEventListener('click', function () {
            H4.style.display = 'none';
            menu.style.display = 'block';
        });

        closeMenuButton.addEventListener('click', function () {
            menu.style.display = 'none';
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
