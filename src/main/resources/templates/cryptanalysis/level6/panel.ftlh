<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level6_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 26>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 26>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level6_practice0" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 27>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 27>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 27>disabled</#if>>Подготовка
        </button>
    </form>
    <form action="/open_Level6_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 28>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 28>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 28>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level6_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 29>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 29>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 29>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level6_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 30>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 30>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 30>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level6_practice4" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 31>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 31>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 31>disabled</#if>>Этап IV
        </button>
    </form>
    <form action="/open_Level6_practice5" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 32>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 32>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 32>disabled</#if>>Этап V
        </button>
    </form>
    <form action="/open_Level6_practice6" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 33>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 33>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 33>disabled</#if>>Этап VI
        </button>
    </form>
    <form action="/open_Level6_practice7" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 34>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 34>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 34>disabled</#if>>Этап VII
        </button>
    </form>
    <form action="/open_Level6_practice8" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 35>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 35>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 35>disabled</#if>>Этап VIII
        </button>
    </form>
    <form action="/open_Level6_practice9" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 36>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 36>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 36>disabled</#if>>Этап IX
        </button>
    </form>
    <form action="/open_Level6_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 37>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 37>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 37>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>