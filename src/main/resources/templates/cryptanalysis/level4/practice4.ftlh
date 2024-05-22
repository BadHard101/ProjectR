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
        <h3>Практика. Этап IV: Функция взлома</h3>
        <br>
        <p>
            И, наконец, пора взяться за функцию, которая будет перебирать все возможные значения ключ-числа, пока не
            найдет тот, что расшифровывает заданную строку.
        </p>
        <p>
            Этот метод прост, но требует внимания к деталям – здесь необходимо все так же, как и в случае с шифром
            Цезаря, перебирать числа, пока результат не будет подобающим (к тому же, на этот раз вместо просмотра
            каждого варианта расшифровки в поисках внятных слов Вы можете использовать возможности модуля распознавания
            английского языка). Однако нельзя забывать про условия и проверки, которые необходимо делать по мере работы
            функции для корректного ее результата.
        </p>
        <p>
            <b>Задание:</b> Каким является четвертое по счету слово в расшифрованном Вами тексте?
        </p>

        <button id="openMenuButton" class="btn btn-primary"
                style="background-color: #92256E; border: #92256E; color: #fff;">Подсказка
        </button>

        <form action="/check_Level4_practice4" method="post" class="mt-4">
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

    <!-- Окно меню подсказки -->
    <div id="menu" class="popup">
        <h2>Выберите подсказку</h2>

        <div style="display: flex; flex-direction: row">
            <button id="openH1Button" class="btn btn-primary mr-2">Возможные значения ключа</button>
            <button id="openH2Button" class="btn btn-primary mr-2">Переход на следующую итерацию цикла</button>
            <button id="openH3Button" class="btn btn-primary mr-2">Несколько вариантов</button>
            <button id="openH4Button" class="btn btn-primary mr-2">Код фрагмента</button>

            <button id="closeMenuButton" class="btn btn-danger">Закрыть</button>
        </div>
    </div>

    <!-- Окно -->
    <div id="H1" class="popup">
        <h2>Возможные значения ключа</h2>
        <p>
            Возможных значений ключа, разбивающегося на ключи a и b, принимающих значения от 0 до количества символов в
            алфавите, соответственно равно количеству символов в алфавите в квадрате.
        </p>
        <button id="closeH1Button" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H2" class="popup">
        <h2>Переход на следующую итерацию цикла</h2>
        <p>
            Досрочно перейти с одного прохода цикла на следующий позволяет команда continue.
        </p>
        <button id="closeH2Button" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H3" class="popup">
        <h2>Несколько вариантов</h2>
        <p>
            При проверке функцией распознавания английского языка программа может вывести ошибочный результат – не стоит
            от него отказываться, но предусмотрите возможность продолжить вычисления и перебор до полного соответствия.
        </p>
        <button id="closeH3Button" class="btn btn-danger">Закрыть</button>
    </div>

    <!-- Окно -->
    <div id="H4" class="popup">
        <h2>Код фрагмента</h2>
        <pre><code>
def hackAffine(message):
    for key in range(len(SYMBOLS) ** 2):
        keyA = getKeyParts(key)[0]
        keyB = getKeyParts(key)[1]
        if (&lt;функция поиска НОД&gt;(keyA, len(SYMBOLS)) != 1):
            continue
        decryptedText = decryptMessage(key, message)
        if detectEnglish.isEnglish(decryptedText):
            print()
            print('Possible encryption hack:')
            print('Key: %s' % (key))
            print('Decrypted message: ' + decryptedText[:200])
            print()
            print('Enter D for done, or just press Enter to continue hacking:')
            response = input('&gt; ')
            if response.strip().upper().startswith('D'):
                return decryptedText
    return None            symIndex = SYMBOLS.find(symbol)
            plaintext += SYMBOLS[(symIndex - keyB) * modInverseOfKeyA % len(SYMBOLS)]
        else:
            plaintext += symbol
    return plaintext</code></pre>
        <button id="closeH4Button" class="btn btn-danger">Закрыть</button>
    </div>

    <script>
        const openMenuButton = document.getElementById('openMenuButton');
        const menu = document.getElementById('menu');
        const closeMenuButton = document.getElementById('closeMenuButton');

        openMenuButton.addEventListener('click', function () {
            H1.style.display = 'none';
            H2.style.display = 'none';
            H3.style.display = 'none';
            H4.style.display = 'none';
            menu.style.display = 'block';
        });

        closeMenuButton.addEventListener('click', function () {
            menu.style.display = 'none';
        });

        const openH1Button = document.getElementById('openH1Button');
        const H1 = document.getElementById('H1');
        const closeH1Button = document.getElementById('closeH1Button');

        openH1Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H1.style.display = 'block';
        });

        closeH1Button.addEventListener('click', function () {
            H1.style.display = 'none';
        });

        const openH2Button = document.getElementById('openH2Button');
        const H2 = document.getElementById('H2');
        const closeH2Button = document.getElementById('closeH2Button');

        openH2Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H2.style.display = 'block';
        });

        closeH2Button.addEventListener('click', function () {
            H2.style.display = 'none';
        });

        const openH3Button = document.getElementById('openH3Button');
        const H3 = document.getElementById('H3');
        const closeH3Button = document.getElementById('closeH3Button');

        openH3Button.addEventListener('click', function () {
            menu.style.display = 'none';
            H3.style.display = 'block';
        });

        closeH3Button.addEventListener('click', function () {
            H3.style.display = 'none';
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
