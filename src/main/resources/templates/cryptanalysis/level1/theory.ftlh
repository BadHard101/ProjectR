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
    Шифр Цезаря является одним из старейших способов сокрытия информации в сообщениях. Кроме того, он чрезвычайно прост
    для понимания, в связи с чем его часто используют для обучения криптографии тех, кто ранее с ней никак не
    сталкивался.
    </p>
    <p>
        Шифр Цезаря (также называемый шифром сдвига) основан на принципе однозначного сдвига букв исходного текста на
        определенное количество символов в алфавите. Это значит, что если в исходном тексте есть буква «В» и для шифрования
        текста выбран ключ, равный 7, то эта «В» (будучи третьей буквой в алфавите) превращается в «И» (десятую букву
        алфавита). Аналогично буквы меняются, если выбирается отрицательный ключ, к примеру, -7. В этом случае наша «В»
        сдвигается в обратную сторону, захватывая буквы из конца алфавита, становясь буквой «Ы» (3 – 7 = - 4 -> 33 – 4 =
        29).
    </p>
    <p>
        Для текстов на английском языке всё ещё применяется шифр ROT13 — шифр Цезаря со сдвигом на 13 букв, который был
        охарактеризован как «сетевой эквивалент того, как в журналах печатают ответы на вопросы викторин — перевёрнутыми
        буквами».
    </p>
    <p>
        Особенность данного метода шифрования состоит в том, что количество возможных вариантов шифротекста ограничено
        числом различных символов алфавита, с помощью которого написан текст. Если в алфавит состоит из n букв, то
        максимальное число вариантов, которые нужно перебрать, чтобы найти оригинал, будет равно n – 1. Таким образом,
        наиболее простой и логичный способ поиска исходника шифротекста для данного шифра – сдвигать номера символов
        алфавита шифротекста до тех пор, пока вместо бессвязной тарабарщины на выходе не окажется осмысленный текст.
    </p>

    <#if openPracLable??>
        <h2 style="color: #4B0082">${openPracLable}</h2>
    </#if>
    <form action="/check_Level1_theory" method="post" class="mt-4 mb-4">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я прочитал!</button>
    </form>
</div>
<#--<form action="/check_Level1_theory" method="post" class="mt-4">
    <h3>Тест:</h3>
    <div class="form-group">
        <label for="question1">Какая вариация шифра Цезаря до сих пор используется в интернет-форумах, как средство для
            сокрытия спойлеров,
            основных мыслей, решений загадок и оскорбительных материалов от случайного взгляда?</label>
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
        <label for="question2">Известно, что при шифровании текста использовался ключ k=3. Расшифруйте фразу "Фэзыя йз
            зьи ахлш пвёнлш
            чугрщцкфнлш дцосн жг еютзм ъгб."</label>
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
        <label for="question3">Как называется класс методов шифрования, которые сводятся к созданию по определённому
            алгоритму таблицы
            шифрования, в которой для каждой буквы открытого текста существует единственная сопоставленная ей буква
            шифр-текста?</label>
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
        <label for="question4">Как будет выглядеть фраза "А я все чаще замечаю, что меня как будто кто-то подменил.",
            зашифрованная при
            помощи шифра Цезаря с ключом k=7?</label>
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
        <label for="question5">Даны открытый текст и его зашифрованная версия. Известно, что шифрование производилось
            шифром Цезаря. Какой
            ключ был при этом был использован (в ответе указать только число)? Открытый текст: "Пусть бегут неуклюже
            пешеходы по лужам"; шифротекст: "Елисд перемен атиуагш спекедимт ме едгмп."</label>
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
</form>-->

<#include "../../footer.ftlh">