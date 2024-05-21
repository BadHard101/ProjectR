<#include "../header.ftlh">

<style>
    .overlay {
        position: relative;
        display: inline-block;
        border-radius: 10px;
        padding: 1% 3%;
        margin-top: 2%;
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
            <h1>Стеганография</h1>
        </div>
        <p></p>
        <p>Стеганография — это удивительное искусство скрытой коммуникации, основанное на способности прятать сообщения
            внутри других данных таким образом, чтобы присутствие самого сообщения оставалось незамеченным. Это не то же
            самое, что криптография, которая скрывает содержание сообщения через шифрование, а стеганография стремится к
            тому, чтобы сам факт существования сообщения оставался скрытым.</p>

        <p>Исторически, стеганография использовалась с древних времён, начиная от записей на свитках, скрытых внутри воска,
            и заканчивая современными методами, такими как скрытие информации в цифровых изображениях или звуковых файлах.
            Она находит применение в различных областях, включая кибербезопасность, разведку и даже искусство.</p>

        <p>В современном мире, где цифровая информация играет огромную роль, стеганография продолжает оставаться важным
            инструментом для тех, кто ищет способы скрытой коммуникации.</p>

    </div>
    <div class="text-center">
        <h2>Пройдите все уровни!</h2>
        <div>
            <p></p>
            <div style="display: grid; grid-template-columns: repeat(5, minmax(150px, 1fr)); gap: 10px; justify-content: center;"
                 class="row">

                <#--изменить fox without bg-->
                <#--                <div style="margin: 1rem; grid-row: 1; grid-column: 3;">-->
                <#--                    <img src="https://i.ibb.co/TqPrfZq/Fox-Without-BG.png"-->
                <#--                         alt="Картинка" style="width: 100px; float: center;">-->
                <#--                </div>-->


                <div style="margin: 1rem; grid-row: 1; grid-column: 1;">
                    <form action="/openStegano_Level1" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.steganoProgress lt 0>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                <#if user.steganoProgress gt 0>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png.png') no-repeat;
                                </#if> ">
                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 1; grid-column: 2;">
                    <form action="/openStegano_Level2" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.steganoProgress lt 1>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.steganoProgress lt 1>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.steganoProgress gt 1>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 1; grid-column: 3;">
                    <form action="/openStegano_Level3" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.steganoProgress lt 2>disabled</#if>

                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.steganoProgress lt 2>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.steganoProgress gt 2>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 1; grid-column: 4;">
                    <form action="/openStegano_Level4" method="get">
                        <button type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.steganoProgress lt 3>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.steganoProgress lt 3>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.steganoProgress gt 3>
                                <#--complete-->
                                        background: url('https://i.ibb.co/R9gYBr6/purple-Paw.png') no-repeat;
                                </#if> ">

                        </button>
                    </form>
                </div>
                <div style="margin: 1rem; grid-row: 1; grid-column: 5;">
                    <form action="/openStegano_Level5" method="get">
                        <button
                                type="submit"
                                class="btn btn-primary btn-lg btn-circle"
                                <#if user.steganoProgress lt 4>disabled</#if>
                                style="
                                        height: 150px;
                                        width: 150px;
                                        background-size: contain;
                                        border: none;
                                        cursor: pointer;
                                        /*ready*/
                                        background: url('https://i.ibb.co/hf6ctDX/bluePaw.png') no-repeat;
                                <#if user.steganoProgress lt 4>
                                <#--disabled-->
                                        background: url('https://i.ibb.co/p385h2L/greyPaw.png') no-repeat;
                                </#if>
                                <#if user.steganoProgress gt 4>
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