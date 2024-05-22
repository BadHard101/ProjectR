<#include "../header.ftlh">

<style>
    .mainButton {
        width: 35vw;
        max-width: 500px;
        min-height: 3em;
        border-radius: 50px;
        background-color: #191970;
        border: #191970;
        font-size: 2em;
    }

    @media (max-width: 1250px) {
        .mainButton {
            font-size: 1.5em;
        }
    }

    @media (max-width: 980px) {
        .mainButton {
            font-size: 1em;
        }
    }

    @media (max-width: 700px) {
        .mainButton {
            font-size: 0.8em;
        }
    }

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
    }

    .popup > p {
        word-break: break-word;
    }

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
    <div class="text-center">
        <h1>Добро пожаловать в увлекательный мир криптоанализа и стеганографии!</h1>
    </div>
    <p>Здесь вы окунетесь в захватывающий лабиринт шифров, тайных кодов и скрытых посланий. Наши интерактивные курсы не
        только познакомят вас с основами криптографии, но и научат расшифровывать самые разные шифры.</p>

    <p>Мы предлагаем не просто уроки, а настоящее приключение, в котором раскроем перед вами тайны самых известных
        шифров и
        методов стеганографии. Давайте вместе отправимся в увлекательное путешествие по миру шифров и загадок!</p>

    <p>Подготовьтесь к тому, чтобы раскрыть новые горизонты знаний и стать настоящим мастером криптоанализа и
        стеганографии. Начнем это увлекательное приключение прямо сейчас!</p>
</div>
<div style="display: flex; flex-direction: row; justify-content: space-around">

    <form action="/openCryptanalysisLevels" method="get">
        <button
                type="submit"
                class="mainButton btn btn-primary">
            Криптоанализ
        </button>
    </form>
    <form action="/openSteganoLevels" method="get">
        <button
                type="submit"
                class="mainButton btn btn-primary">
            Стеганография
        </button>
    </form>
</div>
<div class="center" style="display: flex; justify-content: center">
    <#--fox with text-->
    <img src="https://i.ibb.co/9gpKTY3/Fox-With-Text.png"
         style="
         width: 70vw;
         max-width: 700px;
">
</div>
<#include "../footer.ftlh">