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
        <h3>Практика. Этап II: Создание и заполнение массива индексов шифротекста</h3>
        <p></p>
        <p>
            Теперь для удобства самого дальнейшего процесса расшифрования создадим еще один массив – в него будут
            записаны
            номера букв шифротекста в алфавите.
        </p>
        <p>
            <b>Задание:</b> Запишите через запятую, без пробелов индексы 4 последних букв шифротекста.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level1_practice2" method="post" class="mt-4">
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
</div>

<!-- Окно меню подсказки -->
<div id="menu" class="popup">
    <h2>Выберите подсказку</h2>

    <div style="display: flex; flex-direction: row">
        <button id="openH1Button" class="btn btn-primary mr-2">Методика реализации</button>
        <button id="openH2Button" class="btn btn-primary mr-2">Индексы символов</button>
        <button id="openH3Button" class="btn btn-primary mr-2">Код фрагмента</button>

        <button id="closeMenuButton" class="btn btn-danger">Закрыть</button>
    </div>
</div>

<div id="H1" class="popup">
    <h2>Методика реализации</h2>
    <p>
        Используйте цикл, проходящий по алфавиту, вложенный в другой цикл – проходящий по длине шифротекста, сравнивая и
        ища совпадения среди букв.
    </p>
    <button id="closeH1Button" class="btn btn-danger">Закрыть</button>
</div>

<div id="H2" class="popup">
    <h2>Индексы символов</h2>
    <p>Алфавит может быть задан как в виде массива отдельных символов, так и единой строкой.</p>
    <button id="closeH2Button" class="btn btn-danger">Закрыть</button>
</div>

<div id="H3" class="popup">
    <h2>Код фрагмента</h2>
    <pre>
<code>
for i in range(len(ciphertext)):
    for j in range(len(alphabet)):
        if ciphertext[i] == alphabet[j]:
            ciphertext_index[i] = j
</code>
</pre>
    <button id="closeH3Button" class="btn btn-danger">Закрыть</button>
</div>

<script>
    const openMenuButton = document.getElementById('openMenuButton');
    const menu = document.getElementById('menu');
    const closeMenuButton = document.getElementById('closeMenuButton');

    openMenuButton.addEventListener('click', function () {
        H1.style.display = 'none';
        H2.style.display = 'none';
        H3.style.display = 'none';
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

    const openH3Button = document.getElementById('openH3Button');
    const H3 = document.getElementById('H3');
    const closeH3Button = document.getElementById('closeH3Button');

    openH3Button.addEventListener('click', function () {
        menu.style.display = 'none';
        H3.style.display = 'block';
    });

    closeH3Button.addEventListener('click', function () {
        H3.style.display = 'none';
    });
</script>
<#include "../../footer.ftlh">
