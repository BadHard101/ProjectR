<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level3_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 10>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 10>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level3_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 11>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 11>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 11>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level3_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 12>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 12>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 12>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level3_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 13>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 13>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 13>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level3_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 14>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 14>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 14>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>