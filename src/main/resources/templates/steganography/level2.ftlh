<#include "../header.ftlh">

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
        <h2>ЭТАП 2. ОСНОВНЫЕ СПОСОБЫ СОКРЫТИЯ ИНФОРМАЦИИ В ВИДЕО</h2>
        <p>
            Для начала следует понять, что видео можно рассматривать как единый объект, так и как состоящую
            из множества объектов, таких как аудиодорожка или последовательность изображений, единицу.
            Существует множество методов сокрытия информации в видео. Рассмотрим некоторые из них.

        </p>
        <h2> Методы, основанные на избыточности визуальной и аудиоинформации</h2>
        <p>
            Для скрытия информации такие методы используют младшие разряды цифровых отсчётов цифрового
            изображения и звука, которые содержат очень мало полезной информации. Их заполнение дополнительной
            информацией практически не влияет на качество восприятия, что и даёт возможность скрытия конфиденциальной
            информации.
        </p>
        <p>
            Преимуществом этих методов является возможность скрытой передачи большого объёма информации
            и возможность защиты авторского права путём создания скрытого изображения товарной марки,
            регистрационного номера и т.п.
        </p>
        <p>
            Преимуществом этих методов является возможность скрытой передачи большого объёма информации
            и возможность защиты авторского права путём создания скрытого изображения товарной марки,
            регистрационного номера и т.п.
        </p>
        <h2> Методы, основанные на использовании специальных свойств компьютерных форматов</h2>
        <p>Данные методы делятся на:</p>
        <ul>
            <li>
                методы использования зарезервированных для расширения полей компьютерных форматов данных;
            </li>
            <li>
                методы скрытия в неиспользуемых местах гибких дисков; методы использования имитирующих функций;
            </li>
            <li>
                методы удаления идентифицирующего файл заголовка.
            </li>
        </ul>
        <p>
            <b>Методы использования зарезервированных для расширения полей компьютерных форматов данных</b> основаны
            на том, что многие мультимедийные форматы имеют поля расширения, которые заполняются нулевой
            информацией и не учитываются программой. В эти поля и записывается скрываемая информация.
        </p>
        <p>
            <b>Методы скрытия в неиспользуемых местах гибких дисков</b> основаны на том, что скрываемая информация
            записывается в обычно неиспользуемых местах дисков (например, в нулевой дорожке).
        </p>
        <p>
            <b>Методы удаления идентифицирующего файл заголовка</b> основаны на том, что скрываемая информация шифруется
            и в нем удаляется идентифицирующий заголовок, который заранее известен пользователю.
        </p>
        <p>
            Преимуществом этих методов является простота их реализации, а недостатком – низкая степень
            скрытности и передача небольших объёмов информации.
        </p>


        <#--    <button id="openMenuButton" class="btn btn-primary">Подсказка</button>-->

        <form action="/checkStegano_Level2" method="post" class="mt-4">
            <h3>Тест:</h3>
            <div class="form-group">
                <label for="question1">Какие методы сокрытия информации в
                    видео используют младшие разряды цифровых отсчётов цифрового изображения и звука?</label>
                <input type="text" id="question1" name="answer1" class="form-control"
                       <#if answers??>value="${answers.getAnswer1()}"</#if>>
                <#if result??>
                    <#if result[0]>
                        <span style="color: #4b0082">Верно</span>
                    <#else>
                        <span style="color: #e80101">Неверно</span>
                    </#if>
                </#if>
            </div>

            <div class="form-group">
                <label for="question2">В чём уязвимость мультимедийных форматов с полями расширения?</label>
                <input type="text" id="question2" name="answer2" class="form-control"
                       <#if answers??>value="${answers.getAnswer2()}"</#if>>
                <#if result??>
                    <#if result[1]>
                        <span style="color: #4b0082">Верно</span>
                    <#else>
                        <span style="color: #e80101">Неверно</span>
                    </#if>
                </#if>
            </div>

            <div class="form-group">
                <label for="question3">Какой пример неиспользуемого места в дисках использовался в тексте?</label>
                <input type="text" id="question3" name="answer3" class="form-control"
                       <#if answers??>value="${answers.getAnswer3()}"</#if>>
                <#if result??>
                    <#if result[2]>
                        <span style="color: #4b0082">Верно</span>
                    <#else>
                        <span style="color: #e80101">Неверно</span>
                    </#if>
                </#if>
            </div>

            <div class="form-group">
                <label for="question4">В чем преимущество методов, основанных на на использовании специальных свойств компьютерных форматов?</label>
                <input type="text" id="question4" name="answer4" class="form-control"
                       <#if answers??>value="${answers.getAnswer4()}"</#if>>
                <#if result??>
                    <#if result[3]>
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

        <#if result??>
            <#if result[0] && result[1] && result[2] && result[3] >
                <div class="popup" id="popup">
                    <h1>Поздравляем!</h1>
                    <h3>Вы прошли второй уровень!</h3>
                    <img src="https://media1.tenor.com/m/0pmPIX08hQUAAAAC/goku-dragon-ball-level-up-anime-gif.gif"
                         alt="Ваше изображение">
                    <hr>
                    <a href="/openSteganoLevels" class="btn btn-primary"
                       style="background-color: #9966cc; border: #9966cc;">Перейти к списку
                        уровней</a>
                </div>
            </#if>
        </#if>
    </div>
</div>
<#include "../footer.ftlh">
