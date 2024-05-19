<#include "../../header.ftlh">

<#include "panel.ftlh">

<style>
    /* Стили для всплывающего окна */
    .popup {
        display: block;
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
        padding: 1% 3%;
        margin-top: 1%;
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
        <h3>Контроль</h3>

        <form action="/check_Level2_control" method="post" class="mt-4">
            <h3>Задания:</h3>
            <div class="form-group">
                <label for="question1">
                    Помимо функции дешифрования, созданной в начале практики, напишите функцию шифрования текста по
                    заданному ключу. В ответе запишите текст «foreveryoungiwanttobe», зашифрованный при помощи ключа
                    «ofhluayxncdmtwkgsqbziperjv».
                </label>
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

            <div class="form-group">
                <label for="question2">
                    Чему равно количество потенциальных ключей в шифре простой замены при мощности алфавита равной 33?
                </label>
                <input style="color: whitesmoke; background-color: rgba(84,91,175,0.5); border:rgba(84,91,175,0.5);"
                       type="text" id="question2" name="answer2" class="form-control"
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
                <label for="question3">
                    Какое изменение рейтинга биграмм отражает ухудшение качества ключа (в ответе указать «&gt;», если
                    уменьшение, и «&lt;», если увеличение).
                </label>
                <input style="color: whitesmoke; background-color: rgba(84,91,175,0.5); border:rgba(84,91,175,0.5);"
                       type="text" id="question3" name="answer3" class="form-control"
                       <#if answers??>value="${answers.getAnswer3()}"</#if>>
                <#if result??>
                    <#if result[2]>
                        <span style="color: #4b0082">Верно</span>
                    <#else>
                        <span style="color: #e80101">Неверно</span>
                    </#if>
                </#if>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Проверить</button>
        </form>
    </div>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>

    <#if result??>
        <#if result[0] && result[1] && result[2] >
            <div class="popup" id="popup">
                <h1>Поздравляем!</h1>
                <h3>Вы прошли второй уровень!</h3>
                <img src="https://media1.tenor.com/m/0pmPIX08hQUAAAAC/goku-dragon-ball-level-up-anime-gif.gif"
                     alt="Ваше изображение">
                <hr>
                <a href="/openCryptanalysisLevels" class="btn btn-primary"
                   style="background-color: #9966cc; border: #9966cc;">Перейти к списку
                    уровней</a> <#--TODO: Сделать переход на второй уровень-->
            </div>
        </#if>
    </#if>
</div>


<#include "../../footer.ftlh">
