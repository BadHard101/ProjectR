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
        <h3>Практика. Этап I: Создание необходимых для работы элементов</h3>
        <p></p>
        <p>
            Для взлома шифра и данного и всех последующих уровней мы будем создавать программы на языке Python. Для
            упрощения процесса написания программ, а также уменьшения количества допускаемых в ходе работы ошибок, каждый
            новый этап представленной инструкции будет сопровождаться проверочным заданием, чтобы убедиться, что Вы
            движетесь в правильном направлении.
        </p>
        <p>
            Для того, чтобы выполнить дешифрование текста, зашифрованного шифром Цезаря, Вам понадобятся следующие элементы:
        <ul>
            <li>
                Сам шифротекст. Для примера шифротекст представляет собой строку «yfljvfwkyvizjzexjle»;
            </li>
            <li>
                Алфавит. В данном примере используется английский алфавит из 26 символов (как и шифротекст, буквы взяты в
                нижнем регистре);
            </li>
            <li>
                Массив расшифрованного сообщения. Пусть изначально это будет пустой массив, куда чуть позже будут
                записываться все перебираемые варианты.
            </li>
        </ul>

        </p>
        <p>
            <b>Задание:</b> Выведите длину строки шифротекста.
        </p>
        <#--<p><b>Задание:</b> Греческий советник получил послание от одного из разведчиков на клочке бумаги, состоящее из
            несвязных букв. Помогите Астериксу узнать тайный смысл записки и вовремя защитить свои территории.</p>
        <p><b>Послание:</b> ЫРЬНЪОЪ ГФЭЧЛ ШЛЬЮЛ ЩЛ УЛЦЛЮР ФЮЛЧФК ЫЧЛЩФЬЯРЮ УЛБНЛЮ ЪЭЮЬЪНЛ ЦРЬЦФЬЛ</p>
        <p><b>Используемый шифр:</b> шифр Цезаря</p>-->

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка</button>

        <form action="/check_Level1_practice1" method="post" class="mt-4">
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
                    style="margin-bottom:15px; background-color: #4B0082; border: #4B0082;">Проверить</button>
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
