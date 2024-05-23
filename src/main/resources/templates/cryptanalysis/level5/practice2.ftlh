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
        <h3>Практика. Этап II: Задание функции перевода текста</h3>
        <br>
        <p>
            Данная функция будет принимать на вход сразу три переменные: ключ-слово, сообщение и режим перевода. В
            первую очередь создайте в данной функции пустой список – в нем будет хранится результат перевода. Далее
            переведите ключ в верхний регистр и запустите цикл, проходящий по всем символам сообщения, ищущий их
            числовой эквивалент в алфавите и, в зависимости от режима, изменяющий его на значение сдвига, согласно
            ключу.
        </p>
        <p>
            <b>Задание:</b> Выведите через запятую, без пробелов, числовые эквиваленты символов слова «Cookies»,
            полученные после работы функции на текущем этапе с ключом «C».
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level5_practice2" method="post" class="mt-4">
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
            <button id="openH1Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Методика реализации</button>
            <button id="openH2Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Операторы присваивания</button>
            <button id="openH4Button" class="btn btn-primary mr-2" style="background-color: #8247be; border: #8247be;">Код фрагмента</button>

            <button id="closeMenuButton" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
        </div>
    </div>

    <!-- Окно -->
    <div id="H1" class="popup">
        <h2>Методика реализации</h2>
        <p>
            Зависимость от выбранного режима реализовывается при помощи конструкции if / elif.
        </p>
        <button id="closeH1Button" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H2" class="popup">
        <h2>Операторы присваивания</h2>
        <p>
            В Python есть специальные операторы присваивания, позволяющие сократить количество кода. Например, +=
            прибавляет к переменной слева от себя значение справа, -= соответственно отнимает, *= умножает, //= берет
            целую часть от деления, а %= – остаток.
        </p>
        <button id="closeH2Button" class="btn btn-danger" style="background-color: #92256E; border: #92256E;">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H4" class="popup">
        <h2>Код фрагмента</h2>
        <pre><code>
def translateMessage(key, message, mode):
    translated = []
    keyIndex = 0
    key = key.upper()
    for symbol in message:
        num = LETTERS.find(symbol.upper())
        if num != -1:
            if mode == 'encrypt':
                num += LETTERS.find(key[keyIndex])
            elif mode == 'decrypt':
                num -= LETTERS.find(key[keyIndex])
            num %= len(LETTERS)</code></pre>
        <button id="closeH4Button" class="btn btn-danger">Закрыть</button>
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
