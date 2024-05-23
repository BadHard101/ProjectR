<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level2_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 5>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 5>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level2_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 6>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 6>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 6>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level2_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 7>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 7>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 7>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level2_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 8>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 8>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 8>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level2_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 9>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 9>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 9>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>