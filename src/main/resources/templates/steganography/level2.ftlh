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

<div class="mt-4">
    <h3>ЭТАП 1. ЗНАКОМСТВО СО СТЕГАНОГРАФИЕЙ</h3>
    <p>
        Стеганография — наука, позволяющая спрятать передаваемые данные в некотором контейнере, таким образом скрыв сам
        факт передачи информации. Этот термин ввёл в 1499 году аббат бенедиктинского монастыря Св. Мартина в Шпонгейме
        Иоганн Тритемий в своём трактате «Стеганография», зашифрованном под магическую книгу. Но сам метод стеганографии
        существует очень давно. Легенды донесли до нас метод, который использовался в Римской империи: для доставки
        сообщения выбирали раба, голову которого брили, а затем с помощью татуировки наносили текст. После того, как
        волосы отрастали, раба отправляли в путь. Получатель сообщения снова обривал голову раба и читал сообщение.
    </p>
    <p>
        В отличие от криптографии, которая скрывает содержимое тайного сообщения, стеганография скрывает сам факт его
        существования. Как правило, сообщение будет выглядеть как что-либо иное, например, как изображение, статья,
        список покупок, письмо или судоку. Стеганографию обычно используют совместно с методами криптографии, таким
        образом, дополняя её.
    </p>
    <ul>
        <li>
            Сообщение — внедряемое скрытным образом послание, которое необходимо спрятать;
        </li>
        <li>
            Контейнер (стегоконтейнер) — любой объект, используемый для тайного внедрения сообщения;
        </li>
        <li>
            Стегосистема — методы и средства, используемые для создания скрытого канала для передачи информации;
        </li>
        <li>
            Стегоканал — канал для передачи стегоконтейнера;
        </li>
        <li>
            Ключ — ключ для получения скрытого содержания из контейнера (используется не всегда).
        </li>
    </ul>
    <p>
        Современная стеганография для сокрытия сообщения использует электронные коммуникации и цифровые технологии.
        Каждая современная стегосистема состоит из двух основных компонентов: алгоритмов внедрения и извлечения. Так,
        алгоритм внедрения принимает на вход секретное сообщение, секретный ключ и контейнер, которые будут
        использоваться для передачи сообщения. Результатом его работы является стегосообщение.
    </p>
    <p>
        Сообщением, в общем случае, может быть что угодно: текст, изображение, аудиоданные и так далее. К каждому типу
        данных разрабатываются свои подходы для сокрытия. Так в текстовой стеганографии используются допущения при
        расположении и количестве символов в тексте, не учитываемые при прочтении человеком. Например, одним из методов
        является форматирование. Его суть состоит в раздвижке строки путем увеличения пробелов между словами, когда один
        пробел соответствует, например, биту 0, а два пробела — биту 1. Или в сетевой стеганографии скрытая информация
        передается через компьютерные сети с использованием особенностей работы протоколов передачи данных. Типичные
        методы сетевой стеганографии включают изменение свойств одного из сетевых протоколов.
    </p>
    <p>
        За недавнее время наблюдается использование стеганографии в следующих вредоносных программах и средствах
        кибершпионажа:
    </p>
    <ul>
        <li>
            Microcin (AKA six little monkeys);
        </li>
        <li>
            NetTraveler;
        </li>
        <li>
            Zberp;
        </li>
        <li>
            Enfal (its new loader called Zero.T);
        </li>
        <li>
            Shamoon;
        </li>
        <li>
            KinS;
        </li>
        <li>
            ZeusVM;
        </li>
        <li>
            Triton (Fibbit).
        </li>
    </ul>
    <p>
        Выделяется три главные причины почему авторы вредоносного ПО все активней используют стеганографию в своих
        разработках:
    </p>
    <ul>
        <li>
            Это позволяет им скрыть сам факт загрузки/выгрузки данных, а не только сами данные;
        </li>
        <li>
            Помогает обойти DPI-системы, что актуально в корпоративных сетях;
        </li>
        <li>
            Использование стеганографии может позволить обойти проверку в AntiAPT-продуктах, поскольку последние не
            могут обрабатывать все графические файлы (их слишком много в корпоративных сетях, а алгоритмы анализа
            довольно дорогие).
        </li>
    </ul>

    <#--    <button id="openMenuButton" class="btn btn-primary">Подсказка</button>-->

    <form action="/checkStegano_Level2" method="post" class="mt-4">
        <h3>Тест:</h3>
        <div class="form-group">
            <label for="question1">Как называются методы и средства, используемые для создания скрытого канала для
                передачи информации?</label>
            <input type="text" id="question1" name="answer1" class="form-control"
                   <#if answers??>value="${answers.getAnswer1()}"</#if>>
            <#if result??>
                <#if result[0]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </div>

        <div class="form-group">
            <label for="question2">В каком году был введён термин «СТЕГАНОГРАФИЯ»?</label>
            <input type="text" id="question2" name="answer2" class="form-control"
                   <#if answers??>value="${answers.getAnswer2()}"</#if>>
            <#if result??>
                <#if result[1]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </div>

        <div class="form-group">
            <label for="question3">Чем скрывали сообщение в Римской империи, нанесенное с помощью татуировки?</label>
            <input type="text" id="question3" name="answer3" class="form-control"
                   <#if answers??>value="${answers.getAnswer3()}"</#if>>
            <#if result??>
                <#if result[2]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </div>

        <div class="form-group">
            <label for="question4">Результатом работы какого алгоритма является стегосообщение?</label>
            <input type="text" id="question4" name="answer4" class="form-control"
                   <#if answers??>value="${answers.getAnswer4()}"</#if>>
            <#if result??>
                <#if result[3]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </div>

        <div class="form-group">
            <label for="question5">Как называется метод сокрытия данных в раздвижке сообщений, где один пробел – 0 бит,
                два пробела – 1 бит?</label>
            <input type="text" id="question5" name="answer5" class="form-control"
                   <#if answers??>value="${answers.getAnswer5()}"</#if>>
            <#if result??>
                <#if result[4]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="margin: 1rem 0 5rem 0">Проверить</button>
    </form>

    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>

    <#if result??>
        <#if result[0] && result[1] && result[2] && result[3] && result[4]>
            <div class="popup" id="popup">
                <h1>Поздравляем!</h1>
                <h3>Вы прошли первый уровень!</h3>
                <img src="https://media1.tenor.com/m/0pmPIX08hQUAAAAC/goku-dragon-ball-level-up-anime-gif.gif"
                     alt="Ваше изображение">
                <hr>
                <a href="/openSteganoLevels" class="btn btn-primary">Перейти к списку
                    уровней</a>
            </div>
        </#if>
    </#if>
</div>

<#include "../footer.ftlh">
