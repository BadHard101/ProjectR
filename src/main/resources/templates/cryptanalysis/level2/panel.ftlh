<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level2_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 0>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 0>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level2_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 1>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 1>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 1>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level2_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 2>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 2>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 2>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level2_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 3>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 3>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 3>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level2_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 4>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 4>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 4>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>