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
</style>

<div class="text-center">
    <h1>Добро пожаловать в увлекательный мир криптоанализа и стеганографии!</h1>
</div>
<p>Здесь вы окунетесь в захватывающий лабиринт шифров, тайных кодов и скрытых посланий. Наши интерактивные курсы не
    только познакомят вас с основами криптографии, но и научат расшифровывать самые разные шифры.</p>

<p>Мы предлагаем не просто уроки, а настоящее приключение, в котором раскроем перед вами тайны самых известных шифров и
    методов стеганографии. Давайте вместе отправимся в увлекательное путешествие по миру шифров и загадок!</p>

<p>Подготовьтесь к тому, чтобы раскрыть новые горизонты знаний и стать настоящим мастером криптоанализа и
    стеганографии. Начнем это увлекательное приключение прямо сейчас!</p>

<div style="display: flex; flex-direction: row; justify-content: space-around">
    <form action="/openCryptanalysisLevels" method="get">
        <button
                type="submit"
                class="mainButton btn btn-primary">
            Криптоанализ
        </button>
    </form>
    <form action="/openSteganographyLevels" method="get">
        <button
                type="submit"
                class="mainButton btn btn-primary">
            Стеганография
        </button>
    </form>
</div>
<div class="center">
    <#--    fox with text-->
    <img src="https://private-user-images.githubusercontent.com/46607313/325914973-7dc32f77-7faa-4557-a464-a3cf53a8aca9.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM4ODQsIm5iZiI6MTcxNTE0MzU4NCwicGF0aCI6Ii80NjYwNzMxMy8zMjU5MTQ5NzMtN2RjMzJmNzctN2ZhYS00NTU3LWE0NjQtYTNjZjUzYThhY2E5LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDYyNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWUyMjg3ZjgxNzI2MTY4YjU2MWJkNjQ3YWY4NGEyYTYzOWZhZjYxNWVkZGNjYzA4ZWI0MGUwZGRiMjRkODQ2YWYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.IS80LOEUGpthe_m055RH40SyfcPQxuLogh_FhaaqgAA"
         style="
         width: 70vw;
         max-width: 1000px;
">
</div>
<#include "../footer.ftlh">