<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level4_theory" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 15>;background-color: #8247be; border: #8247be;</#if>"
                <#if user.cryptoProgress lt 15>disabled</#if>>Теория
        </button>
    </form>
    <form action="/open_Level4_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 16>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 16>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 16>disabled</#if>>Этап I
        </button>
    </form>
    <form action="/open_Level4_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 17>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 17>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 17>disabled</#if>>Этап II
        </button>
    </form>
    <form action="/open_Level4_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 18>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 18>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 18>disabled</#if>>Этап III
        </button>
    </form>
    <form action="/open_Level4_practice4" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 19>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 19>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 19>disabled</#if>>Этап IV
        </button>
    </form>
    <form action="/open_Level4_control" method="get">
        <button type="submit" class="btn btn-primary m-1"
                style="width: 10rem; background-color: #669bce; border: #669bce
                <#if user.cryptoProgress gt 20>;background-color: #8247be; border: #8247be;</#if>
                <#if user.cryptoProgress lt 20>;background-color: #A9A9A9; border: #A9A9A9;</#if>"
                <#if user.cryptoProgress lt 20>disabled</#if>>Контроль
        </button>
    </form>
</div>
<hr>