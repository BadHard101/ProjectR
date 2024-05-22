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
        <h3>Практика. Этап III: Дополнение массива перевода</h3>
        <br>
        <p>
            После того, как буквы сдвинуты на определенное значение, переведите их в их изначальный регистр и добавьте
            эти символы в массив, заданный в самом начале функции.
        </p>
        <p>
            Здесь же уместно выполнить проверку окончания ключа: если значение сдвига, использованное на данном шаге
            равно общей длине ключа – самое время это значение сдвига обнулить.
        </p>
        <p>
            При всем этом помните – символы, не являющиеся буквами, добавляются в массив без изменений.
        </p>
        <p>
            <b>Задание:</b> Переведите строку «Jt xbs vstsjcle jjrtu dkwdrjcej mo 1553 bz Jtgpjao dretuohsavlfr Hjobeo
            Bbutowua Cflreto.» при помощи ключа «Babbage» и в ответе укажите имя криптографа, о котором в ней говорится.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level5_practice3" method="post" class="mt-4">
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
            <button id="openH1Button" class="btn btn-primary mr-2">Методика реализации</button>
            <button id="openH2Button" class="btn btn-primary mr-2">Проверка регистра</button>
            <button id="openH4Button" class="btn btn-primary mr-2">Код фрагмента</button>

            <button id="closeMenuButton" class="btn btn-danger">Закрыть</button>
        </div>
    </div>

    <!-- Окно -->
    <div id="H1" class="popup">
        <h2>Методика реализации</h2>
        <p>
            Добавление значения переменной в конец массива выполняется при помощи конструкции вида &lt;массив&gt;.append(&lt;переменная&gt;).
        </p>
        <button id="closeH1Button" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H2" class="popup">
        <h2>Проверка регистра</h2>
        <p>
            Проверить, в каком регистре находится буква, можно при помощи конструкций вида &lt;переменная&gt;.islower()
            или &lt;переменная&gt;.isupper().
        </p>
        <button id="closeH2Button" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H4" class="popup">
        <h2>Код фрагмента</h2>
        <pre><code>
if symbol.isupper():
                translated.append(LETTERS[num])
            elif symbol.islower():
                translated.append(LETTERS[num].lower())
            keyIndex += 1
            if keyIndex == len(key):
                keyIndex = 0
        else:
            translated.append(symbol)
    return ''.join(translated)</code></pre>
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
