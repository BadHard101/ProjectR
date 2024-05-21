<#include "../header.ftlh">
<style>
    .overlay {
        position: relative;
        display: inline-block;
        border-radius: 10px;
        padding: 3% 3%;
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
<div class="">
    <div class="overlay">

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
    </div>

    <div class="text-center">
        <h2>Пройдите все уровни!</h2>
        <div>

            <div style="display: grid; grid-template-columns: repeat(3, minmax(150px, 1fr)); gap: 10px; justify-content: center;"
                 class="row">

                <#--изменить fox without bg-->
                <div style="margin: 1rem; grid-row: 1; grid-column: 3;">
                    <img src="https://i.ibb.co/TqPrfZq/Fox-Without-BG.png"
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
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                <#if user.cryptoProgress gt 4>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png.png') no-repeat;
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
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.cryptoProgress lt 5>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 9>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
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
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.cryptoProgress lt 10>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 14>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
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
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.cryptoProgress lt 15>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 20>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 5; grid-column: 1;">
                    <form action="/open_Level5_theory" method="get">
                        <button
                                type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 21>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.cryptoProgress lt 21>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 25>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if>">

                        </button>
                    </form>
                </div>

                <div style="margin: 1rem; grid-row: 6; grid-column: 2;">
                    <form action="/open_Level6_theory" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.cryptoProgress lt 26>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.cryptoProgress lt 26>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.cryptoProgress gt 37>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if>">
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
