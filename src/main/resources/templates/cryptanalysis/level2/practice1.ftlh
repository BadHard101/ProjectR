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
        <h3>Практика. Этап I: Подготовка констант и загрузка словаря</h3>
        <br>
        <p>
            В первую очередь необходимо задать константный набор букв английского алфавита (в нижнем и верхнем
            регистрах), а также символами перевода строки, знаками табуляции и пробелами. Далее создайте функцию для
            загрузки файла словаря английских слов и формирования на его основе структуры данных со словами – это будет
            фундаментом для дальнейшей работы программы.
        </p>
        <p>
            <b>Задание:</b> Укажите точное количество всех слов, приведенных в файле-словаре.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level2_practice1" method="post" class="mt-4">
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
            <button id="openEmptyMassiveButton" class="btn btn-primary mr-2">Пустые массивы</button>
            <#--            <button id="openAlphabetButton" class="btn btn-primary mr-2">Алфавит</button>-->
            <#--            <button id="openLengthButton" class="btn btn-primary mr-2">Длина строки</button>-->
            <#--            <button id="openCodeButton" class="btn btn-warning mr-2" style="display: none">Код фрагмента</button>-->

            <button id="closeMenuButton" class="btn btn-danger">Закрыть</button>
        </div>
    </div>

    <!-- Окно Метода подсказки -->
    <div id="emptyMassive" class="popup">
        <h2>Пустые массивы</h2>
        <p>
            Для создания пустых массивов фиксированной длины используйте конструкцию
            вида &lt;имя пустого массива&gt; = [None] * &lt;длина пустого массива&gt;.
        </p>
        <button id="closeEmptyMassiveButton" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно Ключа подсказки -->
    <div id="key" class="popup">
        <h2>Ключ</h2>
        <p>Ключ: -12</p>
        <button id="closeKeyButton" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно Ответа подсказки -->
    <div id="result" class="popup">
        <h2>Ответ</h2>
        <p>ПЕРВОГО ЧИСЛА МАРТА НА ЗАКАТЕ ИТАЛИЯ ПЛАНИРУЕТ ЗАХВАТ ОСТРОВА КЕРКИРА</p>
        <button id="closeResultButton" class="btn btn-danger">Закрыть</button>
    </div>

    <script>
        let resultCounter = 0;
        const needForResult = 3;

        const openMenuButton = document.getElementById('openMenuButton');
        const menu = document.getElementById('menu');
        const closeMenuButton = document.getElementById('closeMenuButton');

        openMenuButton.addEventListener('click', function () {
            result.style.display = 'none';
            key.style.display = 'none';
            emptyMassive.style.display = 'none';
            menu.style.display = 'block';
        });

        closeMenuButton.addEventListener('click', function () {
            menu.style.display = 'none';
        });

        const openEmptyMassiveButton = document.getElementById('openEmptyMassiveButton');
        const emptyMassive = document.getElementById('emptyMassive');
        const closeEmptyMassiveButton = document.getElementById('closeEmptyMassiveButton');

        openEmptyMassiveButton.addEventListener('click', function () {
            menu.style.display = 'none';
            emptyMassive.style.display = 'block';

            resultCounter = resultCounter + 1;
            if (resultCounter === needForResult) {
                openResultButton.style.display = 'block';
            }
        });

        closeEmptyMassiveButton.addEventListener('click', function () {
            emptyMassive.style.display = 'none';
        });

        const openKeyButton = document.getElementById('openKeyButton');
        const key = document.getElementById('key');
        const closeKeyButton = document.getElementById('closeKeyButton');

        openKeyButton.addEventListener('click', function () {
            menu.style.display = 'none';
            key.style.display = 'block';

            resultCounter = resultCounter + 1;
            if (resultCounter === needForResult) {
                openResultButton.style.display = 'block';
            }
        });

        closeKeyButton.addEventListener('click', function () {
            key.style.display = 'none';
        });

        const openResultButton = document.getElementById('openResultButton');
        const result = document.getElementById('result');
        const closeResultButton = document.getElementById('closeResultButton');

        openResultButton.addEventListener('click', function () {
            menu.style.display = 'none';
            result.style.display = 'block';
        });

        closeResultButton.addEventListener('click', function () {
            result.style.display = 'none';
        });

    </script>
</div>
<#include "../../footer.ftlh">
