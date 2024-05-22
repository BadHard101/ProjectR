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
        <h3>Практика. Этап III: Расширенный алгоритм Евклида</h3>
        <br>
        <p>
            Расширенный алгоритм Евклида можно описать следующим образом:
        </p>
        <ol>
            <li>
                Объявляем шесть переменных: u1, u2, u3, v1, v2, v3. Изначально мы присваиваем им следующие значения:
                <ul>
                    <li>
                        u1 = 1, u2 = 0, u3 = a
                    </li>
                    <li>
                        v1 = 0, v2 = 1, v3 = m
                    </li>
                </ul>
            </li>
            <li>
                Запускаем цикл while, который будет выполняться до тех пор, пока v3 не станет равным 0.
            </li>
            <li>
                Внутри цикла мы выполняем следующие действия:
                <ul>
                    <li>
                        Вычисляем q, которое равно целочисленному частному от деления u3 на v3.
                    </li>
                    <li>
                        Обновляем значения переменных v1, v2, v3, u1, u2, u3 на, соответственно, (u1 - q * v1), (u2 -
                        q * v2), (u3 - q * v3), v1, v2, v3.
                    </li>
                </ul>
            </li>
            <li>
                После выхода из цикла while, мы возвращаем значение u1 % m. Это и будет искомым обратным числом для a по
                модулю m.
            </li>
        </ol>
        <p>
            <b>Задание:</b> Какое значение выведет функция поиска числа, обратного числу 46 по модулю 85?
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level3_practice3" method="post" class="mt-4">
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
<#include "../../footer.ftlh">
