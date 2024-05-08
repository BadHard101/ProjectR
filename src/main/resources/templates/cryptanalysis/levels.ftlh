<#include "../header.ftlh">

<div class="fullbgLevels">

    <div class="text-center">
        <h1>КРИПТОАНАЛИЗ</h1>
    </div>
    <p>Криптоанализ — это увлекательная область, связанная с изучением методов защиты информации и их взломом. Основная
        цель
        криптоанализа состоит в том, чтобы расшифровать зашифрованные данные без знания ключа шифрования!</p>

    <p>Представьте, что у вас есть сообщение, которое зашифровано. Шифрование делает его непонятным для посторонних лиц,
        но
        если вы сможете расшифровать его, то получите доступ к исходному содержанию. Криптоаналитики ищут уязвимости в
        шифровальных алгоритмах или пытаются использовать различные методы, чтобы восстановить исходные данные.</p>

    <p>В этом разделе вы познакомитесь с основами криптоанализа и научитесь взламывать различные шифры. После
        прохождения
        всех
        уровней вы сможете сами создавать надежные шифры и защищать свои данные от посторонних глаз.</p>


    <div class="text-center">
        <h3>Пройдите все уровни!</h3>
        <div>

            <div style="display: grid; grid-template-columns: repeat(3, minmax(150px, 1fr)); gap: 10px; justify-content: center;"
                 class="row">

<#--                изменить fox without bg-->
                <div style="margin: 1rem; grid-row: 1; grid-column: 3;">
                    <img src="https://private-user-images.githubusercontent.com/46607313/328532653-85cec768-397b-49bc-87f7-0120f0fe049e.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM5NjIsIm5iZiI6MTcxNTE0MzY2MiwicGF0aCI6Ii80NjYwNzMxMy8zMjg1MzI2NTMtODVjZWM3NjgtMzk3Yi00OWJjLTg3ZjctMDEyMGYwZmUwNDllLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDc0MlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTdmMzIxYjAxYmY0NTUwOWY5NzE5NDUzZTE4ZWVkODcxYmFhNmQ3NGFlMzBlMGFmZTdiNTkzYzMxNzAzODQwNTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.vnSjHXY3_IolSWjlWOHf_4Plw3mgK_gk74Z7BmK9nvI"
                         alt="Картинка" style="width: 100px; float: center;">
                </div>


                <div style="margin: 1rem; grid-row: 1; grid-column: 1;">
                    <form action="/open_Level1_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 0>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                <#if user.cryptoProgress gt 4>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if> ">
                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 2; grid-column: 2;">
                    <form action="/open_Level2_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 5>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;

                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                <#if user.cryptoProgress lt 5>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY4NzFkNTU2NDlhMjkyNjI2YTAwNjMxZDdjYWY0MTEzNzhmMDg0ZWQ2NDM3ZmI0NTMyY2ViMGNhODkyZGFjYTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.640p6LIilsvZpfciukCpa15TVHosdyWyeg74yOAw2GM') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 9>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 3; grid-column: 3;">
                    <form action="/open_Level3_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 10>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;
                                <#if user.cryptoProgress lt 10>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY4NzFkNTU2NDlhMjkyNjI2YTAwNjMxZDdjYWY0MTEzNzhmMDg0ZWQ2NDM3ZmI0NTMyY2ViMGNhODkyZGFjYTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.640p6LIilsvZpfciukCpa15TVHosdyWyeg74yOAw2GM') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 14>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 4; grid-column: 2;">
                    <form action="/open_Level4_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 15>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;
                                <#if user.cryptoProgress lt 15>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY4NzFkNTU2NDlhMjkyNjI2YTAwNjMxZDdjYWY0MTEzNzhmMDg0ZWQ2NDM3ZmI0NTMyY2ViMGNhODkyZGFjYTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.640p6LIilsvZpfciukCpa15TVHosdyWyeg74yOAw2GM') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 19>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 5; grid-column: 1;">
                    <form action="/open_Level5_theory" method="get">
                        <button
                                type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 20>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;
                                <#if user.cryptoProgress lt 20>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY4NzFkNTU2NDlhMjkyNjI2YTAwNjMxZDdjYWY0MTEzNzhmMDg0ZWQ2NDM3ZmI0NTMyY2ViMGNhODkyZGFjYTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.640p6LIilsvZpfciukCpa15TVHosdyWyeg74yOAw2GM') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 24>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if>
                                        ">

                        </button>
                    </form>
                </div>

                <div style="margin: 1rem; grid-row: 6; grid-column: 2;">
                    <form action="/open_Level6_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 25>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326361477-68050dc1-95de-4f6e-ab9b-2043dec1878b.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjE0NzctNjgwNTBkYzEtOTVkZS00ZjZlLWFiOWItMjA0M2RlYzE4NzhiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTE0OGNjOWJjMTBlY2E4OWI0ZGQyZTIzMDA1MmI2MDU0ZmIzZTdiOTNiOGRiMjA5ZGRmOTFhNTI4NTYyYjhkZTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xi1LaJJlM_MgGBrkCh7mPlZO3Oyjr3fewAQKg7s1xpQ') no-repeat;
                                <#if user.cryptoProgress lt 25>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326364087-58a678ef-e92c-4e8c-88a7-2188c72dac13.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNjQwODctNThhNjc4ZWYtZTkyYy00ZThjLTg4YTctMjE4OGM3MmRhYzEzLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY4NzFkNTU2NDlhMjkyNjI2YTAwNjMxZDdjYWY0MTEzNzhmMDg0ZWQ2NDM3ZmI0NTMyY2ViMGNhODkyZGFjYTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.640p6LIilsvZpfciukCpa15TVHosdyWyeg74yOAw2GM') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 27>
                                        background: url('https://private-user-images.githubusercontent.com/46607313/326358491-e3f37ca8-e308-4439-a2a6-088e38e52332.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDM1NzIsIm5iZiI6MTcxNTE0MzI3MiwicGF0aCI6Ii80NjYwNzMxMy8zMjYzNTg0OTEtZTNmMzdjYTgtZTMwOC00NDM5LWEyYTYtMDg4ZTM4ZTUyMzMyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0NDExMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTM0MmJkMjQ2NzU3ZWEwNGVjYTJkOTc5YzJhMGY4ZjRkMjk1NDhlMjQxYTcxMzVmYWZhYmQ5ZmUwYmY2ODE4MTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.o8VuBzTcUdrkTRNdYmFO0E7q3aVSWzclq5ruABfiMaE') no-repeat;
                                </#if>
                                        ">
                        </button>
                    </form>
                </div>
            </div>


        </div>
    </div>
</div>

<#include "../footer.ftlh">

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
