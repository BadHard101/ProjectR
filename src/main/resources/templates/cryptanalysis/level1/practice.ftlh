<#--
<#include "../../header.ftlh">

<#include "panel.ftlh">

<h3>Практика</h3>

<#include "../../footer.ftlh">-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popup Example</title>
    <style>
        /* Стили для всплывающего окна */
        .popup {
            display: none; /* Скрываем всплывающее окно по умолчанию */
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            z-index: 1000; /* Устанавливаем высокий z-index, чтобы всплывающее окно находилось над остальным контентом */
        }
    </style>
</head>
<body>

<button id="openMenuButton">Подсказка</button>

<#--Окно меню подсказки-->
<div id="menu" class="popup">
    <h2>Подсказки</h2>

    <form action="/open_Level1_theory" method="get">
        <button <#--id="openCipherButton"--> type="submit">О шифре</button>
    </form>
    <button id="openMethodButton">Метод</button>
    <button id="openKeyButton">Ключ</button>
    <button id="openResultButton" style="display: none">Ответ</button>


    <button id="closeMenuButton">Закрыть</button>
</div>

<#--Окно Метода подсказки-->
<div id="method" class="popup">
    <h2>Метод</h2>
    <p>
        Малое пространство ключей делает брут-форс самым эффективным и простым вариантом атаки на шифр Цезаря.
        Брутфорс, или атака полным перебором, — это метод атаки с угадыванием паролей, учетных данных для входа в
        систему, ключей шифрования и прочей информации. Это метод проб и ошибок, цель которого — перебрать все возможные
        комбинации для получения правильного пароля.
        Для вскрытия необходимо каждую букву шифртекста заменить буквой, стоящей на один знак левее в алфавите. Если в
        результате этого не удалось получить читаемое сообщение, то необходимо повторить действие, но уже сместив буквы
        на два знака левее. И так далее, пока в результате не получится читаемый текст.
    </p>
    <button id="closeMethodButton">Закрыть</button>
</div>

<#--Окно Ключа подсказки-->
<div id="key" class="popup">
    <h2>Ключ</h2>
    <p>
        Ключ: -12
    </p>
    <button id="closeKeyButton">Закрыть</button>
</div>

<#--Окно Ответа подсказки-->
<div id="result" class="popup">
    <h2>Ответ</h2>
    <p>
        ПЕРВОГО ЧИСЛА МАРТА НА ЗАКАТЕ ИТАЛИЯ ПЛАНИРУЕТ ЗАХВАТ ОСТРОВА КЕРКИРА
    </p>
    <button id="closeResultButton">Закрыть</button>
</div>

<script>
    let resultCounter = 0;
    const needForResult = 2;

    const openMenuButton = document.getElementById('openMenuButton');
    const menu = document.getElementById('menu');
    const closeMenuButton = document.getElementById('closeMenuButton');

    openMenuButton.addEventListener('click', function () {
        menu.style.display = 'block';
    });

    closeMenuButton.addEventListener('click', function () {
        menu.style.display = 'none';
    });

    const openMethodButton = document.getElementById('openMethodButton');
    const method = document.getElementById('method');
    const closeMethodButton = document.getElementById('closeMethodButton');

    openMethodButton.addEventListener('click', function () {
        menu.style.display = 'none';
        method.style.display = 'block';

        resultCounter = resultCounter + 1;
        if (resultCounter === needForResult) {
            openResultButton.style.display = 'block';
        }
    });

    closeMethodButton.addEventListener('click', function () {
        method.style.display = 'none';
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
</body>
</html>