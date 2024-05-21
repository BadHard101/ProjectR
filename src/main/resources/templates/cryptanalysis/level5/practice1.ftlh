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
        <h3>Практика. Этап I: Задание исходных данных</h3>
        <br>
        <p>
            Само собой, для реализации шифра Виженера первым делом требуется указать исходные значения для данной
            программы, а именно исходное сообщение, которое Вы будете шифровать, ключевое слово, для этой цели
            используемое, а также режим перевода текста – шифрование или дешифрование.
        </p>
        <p>
            На этот раз реализуйте ввод исходных значений не в виде констант, а чтобы их нужно было вводить
            самостоятельно в консоль при запуске программы.
        </p>
        <p>
            В качестве константы оставьте лишь одно – алфавит английского языка в верхнем регистре, – он пригодится Вам
            дальше.
        </p>
        <p>
            <b>Задание:</b> Найдите с помощью написанной функции НОД чисел 357773 и 58546.
        </p>

        <#if openPracLable??>
            <h2 style="color: #4B0082">${openPracLable}</h2>
        </#if>
        <form action="/check_Level5_practice1" method="post" class="mt-4 mb-4">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я прочитал!
            </button>
        </form>
</div>
<#include "../../footer.ftlh">
