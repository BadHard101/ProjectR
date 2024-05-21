<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level5_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 21>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 21>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level5_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 22>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 22>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 22>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level5_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 23>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 23>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 23>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level5_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 24>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 24>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 24>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level5_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 25>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 25>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 25>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>