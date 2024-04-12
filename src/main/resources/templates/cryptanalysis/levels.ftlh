<#include "../header.ftlh">

<h1>Криптоанализ</h1>
<p>Криптоанализ — это увлекательная область, связанная с изучением методов защиты информации и их взломом. Основная цель
    криптоанализа состоит в том, чтобы расшифровать зашифрованные данные без знания ключа шифрования!</p>

<p>Представьте, что у вас есть сообщение, которое зашифровано. Шифрование делает его непонятным для посторонних лиц, но
    если вы сможете расшифровать его, то получите доступ к исходному содержанию. Криптоаналитики ищут уязвимости в
    шифровальных алгоритмах или пытаются использовать различные методы, чтобы восстановить исходные данные.</p>

<p>В этом разделе вы познакомитесь с основами криптоанализа и научитесь взламывать различные шифры. После прохождения
    всех
    уровней вы сможете сами создавать надежные шифры и защищать свои данные от посторонних глаз.</p>

<h3>Пройдите все уровни!</h3>

<div style="justify-content: center" class="row">
    <div style="margin: 1rem">
        <form action="/open_Level1_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress gt 4>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 0>disabled</#if>>
                Уровень 1
                Начало
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level2_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress lt 5>background: gray;</#if>
            <#if user.cryptoProgress gt 9>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 5>disabled</#if>>
                Уровень 2
                Тема 2
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level3_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress lt 10>background: gray;</#if>
            <#if user.cryptoProgress gt 14>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 10>disabled</#if>>
                Уровень 3
                Тема 3
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level4_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress lt 15>background: gray;</#if>
            <#if user.cryptoProgress gt 19>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 15>disabled</#if>>
                Уровень 4
                Тема 4
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level5_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress lt 20>background: gray;</#if>
            <#if user.cryptoProgress gt 24>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 20>disabled</#if>>
                Уровень 5
                Тема 5
            </button>
        </form>
    </div>

    <div style="margin: 1rem">
        <form action="/open_Level6_theory" method="get">
            <button style="
                    border-radius: 100px;
                    height: 150px;
                    width: 150px;
            <#if user.cryptoProgress lt 25>background: gray;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 25>disabled</#if>>
                Уровень 6
                Итоговая
            </button>
        </form>
    </div>

    <#--<form action="/open_Level1_theory" method="get">
    <button type="submit">Уровень 1</button>
</form>
<form action="/open_Level2_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 5>disabled</#if>>Уровень 2</button>
</form>
<form action="/open_Level3_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 10>disabled</#if>>Уровень 3</button>
</form>
<form action="/open_Level4_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 15>disabled</#if>>Уровень 4</button>
</form>
<form action="/open_Level5_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 20>disabled</#if>>Уровень 5</button>
</form>-->

</div>
<#include "../footer.ftlh">