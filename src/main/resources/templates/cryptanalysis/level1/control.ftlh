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
        <h3>Контроль</h3>
        <p>
            В данной секции Вам будет дан ряд заданий на понимание теоретической составляющей изученного метода шифрования,
            а также заданий по модификации написанной Вами в ходе практики программы.
        </p>

        <form action="/check_Level1_control" method="post" class="mt-4">
            <h3>Задания:</h3>
            <div class="form-group">
                <label for="question1">
                    Если алфавит состоит из 42 символов, для использования шифра Цезаря используется
                    ключ, равный -24, каким номером в алфавите будет обладать символ после преобразования, до шифрования
                    имевший индекс 5 (нумерация символов в алфавите начинается с 1)?
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
                    Модифицируйте свою программу так, чтобы она зашифровывала заданный ей текст по определенному ключу.
                    Зашифруйте строку «iseetreesofgreenredrosestoo» с ключом, равным 4.
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
                    Есть шифротекст при алфавите, состоящем из 26 символов. Какова вероятность того, что при переборе всех
                    вариантов исходного текста правильный окажется среди первых трех?
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
            <button style="margin-bottom:15px; background-color: #4B0082; border: #4B0082;"
                    type="submit" class="btn btn-primary" style="margin: 1rem 0 5rem 0">Проверить</button>
        </form>
    </div>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>

    <#if result??>
        <#if result[0] && result[1] && result[2] >
            <div class="popup" id="popup">
                <h1>Поздравляем!</h1>
                <h3>Вы прошли первый уровень!</h3>
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
