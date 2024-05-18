<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level2_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 5>;background: green</#if>"
                <#if user.cryptoProgress lt 5>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level2_practice0" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 6>;background: green</#if>"
                <#if user.cryptoProgress lt 6>disabled</#if>>Подготовка
        </button>
    </form>
    <form action="/open_Level2_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 7>;background: green</#if>"
                <#if user.cryptoProgress lt 7>disabled</#if>>Этап 1
        </button>
    </form>
    <form action="/open_Level2_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 8>;background: green</#if>"
                <#if user.cryptoProgress lt 8>disabled</#if>>Этап 2
        </button>
    </form>
    <form action="/open_Level2_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 9>;background: green</#if>"
                <#if user.cryptoProgress lt 9>disabled</#if>>Этап 3
        </button>
    </form>
    <form action="/open_Level2_practice4" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 10>;background: green</#if>"
                <#if user.cryptoProgress lt 10>disabled</#if>>Этап 4
        </button>
    </form>
    <form action="/open_Level2_practice5" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 11>;background: green</#if>"
                <#if user.cryptoProgress lt 11>disabled</#if>>Этап 5
        </button>
    </form>
    <form action="/open_Level2_practice6" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 12>;background: green</#if>"
                <#if user.cryptoProgress lt 12>disabled</#if>>Этап 6
        </button>
    </form>
    <form action="/open_Level2_practice7" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 13>;background: green</#if>"
                <#if user.cryptoProgress lt 13>disabled</#if>>Этап 7
        </button>
    </form>
    <form action="/open_Level2_practice8" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 14>;background: green</#if>"
                <#if user.cryptoProgress lt 14>disabled</#if>>Этап 8
        </button>
    </form>
    <form action="/open_Level2_practice9" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 15>;background: green</#if>"
                <#if user.cryptoProgress lt 15>disabled</#if>>Этап 9
        </button>
    </form>
    <form action="/open_Level2_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem <#if user.cryptoProgress gt 16>;background: green</#if>"
                <#if user.cryptoProgress lt 16>disabled</#if>>Контроль
        </button>
    </form>
</div>