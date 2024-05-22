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
    <p class="mt-4">

    <h3>Теория</h3></p>
    <p>
        На первом уровне Вы узнали о том, что такое шифр Цезаря, что он из себя представляет и как работает. Теперь же
        Вам предстоит познакомиться с аффинным шифром – несколько более сложным братом шифра Цезаря.
    </p>
    <p>
        Если при шифровании двумя уровнями ранее каждый символ исходного текста сдвигался на определенное число символов
        влево или вправо по алфавиту, то в случае аффинного шифра используется не сложение или вычитание, а умножение и
        взятие остатка от деления – такие шифры также называются мультипликативными.
    </p>
    <p>
        Для того, чтобы зашифровать некоторое сообщение аффинным шифром, необходима пара из двух чисел – a и b. Эта пара
        чисел является ключом шифрования, при этом к a предъявляется требование – оно должно быть взаимно простым с
        размером алфавита, используемого в сообщении, то есть у числа a и числа, равного количеству символов алфавита,
        наибольший общий делитель должен быть равен единице. Число b же должно принимать значения менее длины алфавита,
        начиная с нуля.
    </p>
    <p>
        Когда у нас есть ключ вида (a, b), шифрование выполняется по формуле E(x) = (ax + b) mod m, где E(x) – индекс
        зашифрованного символа, x – индекс символа сообщения в алфавите, а m – количество символов в этом самом
        алфавите. К примеру, если используется алфавит русского языка, ключ равен паре чисел (5, 22), и необходимо
        зашифровать букву «Г» (4 в алфавите), по формуле она превращается в (5 * 4 + 22) mod 33 = (20 + 22) mod 33 = 42
        mod 33 = 9 (буква «З»). Аналогично, для дешифрования используется формула D(x) = (a-1 * (x - b)), принцип ее
        работы идентичен формуле шифрования.
    </p>

    <#if openPracLable??>
        <h2 style="color: #4B0082">${openPracLable}</h2>
    </#if>
    <form action="/check_Level4_theory" method="post" class="mt-4 mb-4">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я прочитал!
        </button>
    </form>
</div>

<#include "../../footer.ftlh">