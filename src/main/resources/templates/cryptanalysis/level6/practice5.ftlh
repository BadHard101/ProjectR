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
        <h3>Практика. Этап V: Задание цикла перестановок символов ключа</h3>
        <p></p>
        <p>
            С этого этапа начинается самая сложная с точки зрения понимания и технической реализации часть. Дело в том, что
            после того, как были получены результаты первичного ключа, начинается процедура подгона ключа для улучшения
            рейтинга биграмм до тех пор, пока он не станет постоянным. Подгон выполняется путем перестановки двух
            произвольных букв ключа, после чего пересчитываются частоты биграмм, содержащих переставленные буквы.
        </p>
        <p>
            Для начала сохраните существующий рейтинг биграмм в отдельную переменную – он потребуется позже, а также
            установите логическую флаг-переменную для обозначения найденной полезной биграммы. Далее установите стартовое
            количество шагов соседства на единицу, после чего создайте бесконечный цикл, условием выхода из которого будет
            превышение количеством шагов соседства длины алфавита.
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <#if openPracLable??>
            <h2 style="color: #4B0082">${openPracLable}</h2>
        </#if>
        <form action="/check_Level6_practice5" method="post" class="mt-4 mb-4">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я понял!</button>
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
prevBigrammsRating = bigrammsRating
    step = 1
    while True:
        findGoodBigrammFlag = False</code></pre>
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
