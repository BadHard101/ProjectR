<#include "../../header.ftlh">

<#include "panel.ftlh">

<p>
    Шифр Цезаря (лат. notae Caesarianae), шифр сдвига, код Цезаря, схема Цезаря — шифр, при использовании которого
    каждая буква из открытого текста заменяется на такую букву, которая в алфавите находится на некотором постоянном
    числе позиций левее или правее от рассматриваемой буквы. Например, при сдвиге букв русского алфавита вправо на 3
    позиции.
</p>
<ul>
    <li>буква «А» заменяется на букву «Г»,</li>
    <li>буква «Б» заменяется на букву «Д»,</li>
    <li>и так далее,</li>
    <li>буква «Ь» заменяется на букву «Я»,</li>
    <li>буква «Э» заменяется на букву «А»,</li>
    <li>буква «Ю» заменяется на букву «Б»,</li>
    <li>буква «Я» заменяется на букву «В».</li>
</ul>
<p>
    Шифр Цезаря назван в честь римского полководца Гая Юлия Цезаря, использовавшего его для шифрования текстов при
    переписке со своими военачальниками. Шифрование шифром Цезаря часто является промежуточным шагом при шифровании
    более сложными шифрами, например, шифром Виженера. Для текстов на английском языке всё ещё применяется шифр ROT13 —
    шифр Цезаря со сдвигом на 13 букв, который был охарактеризован как «сетевой эквивалент того, как в журналах печатают
    ответы на вопросы викторин — перевёрнутыми буквами». Шифр Цезаря, как и все моноалфавитные шифры, легко
    взламывается, от чего почти не применяется на практике, но тем не менее известен как один из самых простых методов
    шифрования.
</p>

<form action="/check_Level1_theory" method="post">
    <h3>Тест:</h3>
    <div class="mb-3">
        <label for="question1" class="form-label">
            Какая вариация шифра Цезаря до сих пор используется в интернет-форумах, как средство для сокрытия спойлеров,
            основных мыслей, решений загадок и оскорбительных материалов от случайного взгляда?
        </label>
        <p>
            Ответ: <input type="text" id="question1" name="answer1" class="form-control">
            <#if result??>
                <#if result[0]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </p>
    </div>
    <div class="mb-3">
        <label for="question2" class="form-label">
            Известно, что при шифровании текста использовался ключ k=3. Расшифруйте фразу "Фэзыя йз зьи ахлш пвёнлш
            чугрщцкфнлш дцосн жг еютзм ъгб."
        </label>
        <p>
            Ответ: <input type="text" id="question2" name="answer2" class="form-control">
            <#if result??>
                <#if result[1]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </p>
    </div>
    <div class="mb-3">
        <label for="question3" class="form-label">
            Как называется класс методов шифрования, которые сводятся к созданию по определённому алгоритму таблицы
            шифрования, в которой для каждой буквы открытого текста существует единственная сопоставленная ей буква
            шифр-текста?
        </label>
        <p>
            Ответ: <input type="text" id="question3" name="answer3" class="form-control">
            <#if result??>
                <#if result[2]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </p>
    </div>
    <div class="mb-3">
        <label for="question4" class="form-label">
            Как будет выглядеть фраза "А я все чаще замечаю, что меня как будто кто-то подменил.", зашифрованная при
            помощи шифра Цезаря с ключом k=7?
        </label>
        <p>
            Ответ: <input type="text" id="question4" name="answer4" class="form-control">
            <#if result??>
                <#if result[3]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </p>
    </div>
    <div class="mb-3">
        <label for="question5" class="form-label">
            Даны открытый текст и его зашифрованная версия. Известно, что шифрование производилось шифром Цезаря. Какой
            ключ был при этом был использован (в ответе указать только число)? Открытый текст: "Пусть бегут неуклюже
            пешеходы по лужам"; шифротекст: "Елисд перемен атиуагш спекедимт ме едгмп."
        </label>
        <p>
            Ответ: <input type="text" id="question5" name="answer5" class="form-control">
            <#if result??>
                <#if result[4]>
                    <span style="color: green">Верно</span>
                <#else>
                    <span style="color: red">Неверно</span>
                </#if>
            </#if>
        </p>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" class="btn btn-primary">Проверить</button>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>


<#include "../../footer.ftlh">