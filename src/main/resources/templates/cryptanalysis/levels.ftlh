<#include "../header.ftlh">

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

<div style="justify-content: center" class="row">
    <div style="margin: 1rem">
        <form action="/open_Level1_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress gt 4>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 0>disabled</#if>>
                Уровень 1
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level2_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress lt 5>background: gray;</#if>
            <#if user.cryptoProgress gt 9>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 5>disabled</#if>>
                Уровень 2
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level3_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress lt 10>background: gray;</#if>
            <#if user.cryptoProgress gt 14>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 10>disabled</#if>>
                Уровень 3
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level4_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress lt 15>background: gray;</#if>
            <#if user.cryptoProgress gt 19>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 15>disabled</#if>>
                Уровень 4
            </button>
        </form>
    </div>
    <div style="margin: 1rem">
        <form action="/open_Level5_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress lt 20>background: gray;</#if>
            <#if user.cryptoProgress gt 24>background: green;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 20>disabled</#if>>
                Уровень 5
            </button>
        </form>
    </div>

    <div style="margin: 1rem">
        <form action="/open_Level6_theory" method="get">
            <button style="
                    border-radius: 100px;
                    min-height: 150px;
                    min-width: 150px;
            <#if user.cryptoProgress lt 25>background: gray;</#if> "
                    type="submit"
                    class="btn btn-primary btn-lg btn-circle"
                    <#if user.cryptoProgress lt 25>disabled</#if>>
                Уровень 6
            </button>
        </form>
    </div>

</div>
<#include "../footer.ftlh">