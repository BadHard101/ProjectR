<#include "../header.ftlh">

<div class="fullbgLevels">

<div class="text-center">
    <h1>КРИПТОАНАЛИЗ</h1>
</div>
<p>Криптоанализ — это увлекательная область, связанная с изучением методов защиты информации и их взломом. Основная цель
    криптоанализа состоит в том, чтобы расшифровать зашифрованные данные без знания ключа шифрования!</p>

<p>Представьте, что у вас есть сообщение, которое зашифровано. Шифрование делает его непонятным для посторонних лиц, но
    если вы сможете расшифровать его, то получите доступ к исходному содержанию. Криптоаналитики ищут уязвимости в
    шифровальных алгоритмах или пытаются использовать различные методы, чтобы восстановить исходные данные.</p>

<p>В этом разделе вы познакомитесь с основами криптоанализа и научитесь взламывать различные шифры. После прохождения
    всех
    уровней вы сможете сами создавать надежные шифры и защищать свои данные от посторонних глаз.</p>


<div class="text-center">
    <h3>Пройдите все уровни!</h3>
<div>

<div style="display: grid; grid-template-columns: repeat(3, minmax(150px, 1fr)); gap: 10px; justify-content: center;"
    class="row">

    <div style="margin: 1rem; grid-row: 1; grid-column: 3;">
    <img src="https://private-user-images.githubusercontent.com/46607313/326382141-a24e4f84-c1c6-490e-b8a1-45692a6ffe24.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODE5MjQsIm5iZiI6MTcxNDM4MTYyNCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzODIxNDEtYTI0ZTRmODQtYzFjNi00OTBlLWI4YTEtNDU2OTJhNmZmZTI0LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA5MDcwNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWQyMGRjY2ZhZGNkZDk4NjFhZjdlNDJhMTdmNDI4NTJlY2Q2YjhkMWIzOTk5ZWY0NTg4NDAzZmYyM2ZlZThmNDcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.LBQlZGiUUNoHd6FXUvIN56aJfrCoWx457qU0rvxNnvU"
                alt="Картинка" style="width: 100px; float: center;">
    </div>


    <div style="margin: 1rem; grid-row: 1; grid-column: 1;">
        <form action="/open_Level1_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
                    <#if user.cryptoProgress gt 4>
                    background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
                    </#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 0>disabled</#if>>
            </button>
        </form>
    </div>
    <div style="margin: 1rem; grid-row: 2; grid-column: 2;">
        <form action="/open_Level2_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
            <#if user.cryptoProgress lt 5>
            background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzc2ODUsIm5iZiI6MTcxNDM3NzM4NSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NTYyNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTNmZTZhYjZmZDUzMzViMDg2ZjcxZmQ4MWY4ZmUzZjAzMDY4ZDg1ZGE1NDIyMjcxOGE4MWJiMTk3NTZlNGU0ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.5B8m8aIblReaRctS8C4DQEYK_XPcCrvvDB8JJyMsexc') no-repeat;
            </#if>
            <#if user.cryptoProgress gt 9>
            background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
            </#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 5>disabled</#if>>

            </button>
        </form>
    </div>
    <div style="margin: 1rem; grid-row: 3; grid-column: 3;">
        <form action="/open_Level3_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
            <#if user.cryptoProgress lt 10>
            background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzc2ODUsIm5iZiI6MTcxNDM3NzM4NSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NTYyNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTNmZTZhYjZmZDUzMzViMDg2ZjcxZmQ4MWY4ZmUzZjAzMDY4ZDg1ZGE1NDIyMjcxOGE4MWJiMTk3NTZlNGU0ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.5B8m8aIblReaRctS8C4DQEYK_XPcCrvvDB8JJyMsexc') no-repeat;
            </#if>
            <#if user.cryptoProgress gt 14>
            background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
            </#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 10>disabled</#if>>

            </button>
        </form>
    </div>
    <div style="margin: 1rem; grid-row: 4; grid-column: 2;">
        <form action="/open_Level4_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
            <#if user.cryptoProgress lt 15>
            background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzc2ODUsIm5iZiI6MTcxNDM3NzM4NSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NTYyNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTNmZTZhYjZmZDUzMzViMDg2ZjcxZmQ4MWY4ZmUzZjAzMDY4ZDg1ZGE1NDIyMjcxOGE4MWJiMTk3NTZlNGU0ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.5B8m8aIblReaRctS8C4DQEYK_XPcCrvvDB8JJyMsexc') no-repeat;
            </#if>
            <#if user.cryptoProgress gt 19>
            background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
            </#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 15>disabled</#if>>

            </button>
        </form>
    </div>
    <div style="margin: 1rem; grid-row: 5; grid-column: 1;">
        <form action="/open_Level5_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
            <#if user.cryptoProgress lt 20>
            background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzc2ODUsIm5iZiI6MTcxNDM3NzM4NSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NTYyNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTNmZTZhYjZmZDUzMzViMDg2ZjcxZmQ4MWY4ZmUzZjAzMDY4ZDg1ZGE1NDIyMjcxOGE4MWJiMTk3NTZlNGU0ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.5B8m8aIblReaRctS8C4DQEYK_XPcCrvvDB8JJyMsexc') no-repeat;
            </#if>
            <#if user.cryptoProgress gt 24>
            background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
            </#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 20>disabled</#if>>

            </button>
        </form>
    </div>

    <div style="margin: 1rem; grid-row: 6; grid-column: 2;">
        <form action="/open_Level6_theory" method="get">
            <button style="
                    height: 150px;
                    width: 150px;
                    background: url('https://private-user-images.githubusercontent.com/46607313/326378127-eb089f4f-fbfb-4a17-a0d3-f532eb33d5b3.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzODEwNTcsIm5iZiI6MTcxNDM4MDc1NywicGF0aCI6Ii80NjYwNzMxMy8zMjYzNzgxMjctZWIwODlmNGYtZmJmYi00YTE3LWEwZDMtZjUzMmViMzNkNWIzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA4NTIzN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTZhMDQxYzcxMjBiZWRhNjE4YzY5ZTNiZThkMmMxMThlYmE0YjQyNTBkZjcwMTM5YWFhNDJhZDg4MTY2MzA1N2YmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.OSSrEEAOH6z6qY_-Odysott7l4NrMog76aquXTyZsbU') no-repeat;
                    background-size: contain;
                    border: none;
                    cursor: pointer;
            <#if user.cryptoProgress lt 25>
            background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzc2ODUsIm5iZiI6MTcxNDM3NzM4NSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NTYyNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTNmZTZhYjZmZDUzMzViMDg2ZjcxZmQ4MWY4ZmUzZjAzMDY4ZDg1ZGE1NDIyMjcxOGE4MWJiMTk3NTZlNGU0ZjUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.5B8m8aIblReaRctS8C4DQEYK_XPcCrvvDB8JJyMsexc') no-repeat;
            </#if> "
            <#if user.cryptoProgress gt 27>
            background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzYyMTEsIm5iZiI6MTcxNDM3NTkxMSwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3MzE1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ1Njc0ZWM2N2QwNTY5ODE1ZDU5ZmVjZTAwYzI3NGFiYzUxODk3MWU2NmUwMDdmMTZhYTUwZjE4NjlhNjVlYWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.2Urenaj3w00vxS_8SPh3u9gY7--Zf9hsNystDwjLf50') no-repeat;
            </#if>
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 25>disabled</#if>>

            </button>
        </form>
    </div>
   </div>


    <#--<form action="/open_Level1_theory" method="get">
    <button type="submit"
    style="background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzY5OTgsIm5iZiI6MTcxNDM3NjY5OCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NDQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkxN2JmZDRiYzNjNDk5YTQwMzc1OWY1MjJlNTZjOWM4MDFmNzM1ZjY5M2NiYzY2OTM3ODlmNDZlNjlmZjczNWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Xe-LeDyxXoqeSEmW81u9NmBAVa4_iBZ25Ejz5XIkEf0') no-repeat;
    "
    >Уровень 1</button>
</form>
<form action="/open_Level2_theory" method="get">
    <button type="submit"
    style="background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzY5OTgsIm5iZiI6MTcxNDM3NjY5OCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NDQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkxN2JmZDRiYzNjNDk5YTQwMzc1OWY1MjJlNTZjOWM4MDFmNzM1ZjY5M2NiYzY2OTM3ODlmNDZlNjlmZjczNWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Xe-LeDyxXoqeSEmW81u9NmBAVa4_iBZ25Ejz5XIkEf0') no-repeat;
        "
    <#if user.cryptoProgress lt 5>disabled</#if>>Уровень 2</button>
</form>
<form action="/open_Level3_theory" method="get">
    <button type="submit"
    style="background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzY5OTgsIm5iZiI6MTcxNDM3NjY5OCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NDQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkxN2JmZDRiYzNjNDk5YTQwMzc1OWY1MjJlNTZjOWM4MDFmNzM1ZjY5M2NiYzY2OTM3ODlmNDZlNjlmZjczNWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Xe-LeDyxXoqeSEmW81u9NmBAVa4_iBZ25Ejz5XIkEf0') no-repeat;
        "
         <#if user.cryptoProgress lt 10>disabled</#if>>Уровень 3</button>
</form>
<form action="/open_Level4_theory" method="get">
    <button type="submit"
    style="background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzY5OTgsIm5iZiI6MTcxNDM3NjY5OCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NDQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkxN2JmZDRiYzNjNDk5YTQwMzc1OWY1MjJlNTZjOWM4MDFmNzM1ZjY5M2NiYzY2OTM3ODlmNDZlNjlmZjczNWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Xe-LeDyxXoqeSEmW81u9NmBAVa4_iBZ25Ejz5XIkEf0') no-repeat;
        "
         <#if user.cryptoProgress lt 15>disabled</#if>>Уровень 4</button>
</form>
<form action="/open_Level5_theory" method="get">
    <button type="submit"
    style="background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQzNzY5OTgsIm5iZiI6MTcxNDM3NjY5OCwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI5VDA3NDQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkxN2JmZDRiYzNjNDk5YTQwMzc1OWY1MjJlNTZjOWM4MDFmNzM1ZjY5M2NiYzY2OTM3ODlmNDZlNjlmZjczNWMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.Xe-LeDyxXoqeSEmW81u9NmBAVa4_iBZ25Ejz5XIkEf0') no-repeat;
        "
         <#if user.cryptoProgress lt 20>disabled</#if>>Уровень 5</button>
</form>-->

</div>



<#include "../footer.ftlh">