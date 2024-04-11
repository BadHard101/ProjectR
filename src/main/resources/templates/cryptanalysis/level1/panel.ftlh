<div style="display: flex; flex-direction: row; justify-content: space-around; flex-wrap: wrap">
    <form action="/open_Level1_theory" method="get">
        <button type="submit" class="btn btn-primary m-1" style="width: 10rem" <#if user.cryptoProgress lt 0>disabled</#if>>Теория</button>
    </form>
    <form action="/open_Level1_practice1" method="get">
        <button type="submit" class="btn btn-primary m-1" style="width: 10rem" <#if user.cryptoProgress lt 1>disabled</#if>>Практика 1</button>
    </form>
    <form action="/open_Level1_practice2" method="get">
        <button type="submit" class="btn btn-primary m-1" style="width: 10rem" <#if user.cryptoProgress lt 2>disabled</#if>>Практика 2</button>
    </form>
    <form action="/open_Level1_practice3" method="get">
        <button type="submit" class="btn btn-primary m-1" style="width: 10rem" <#if user.cryptoProgress lt 3>disabled</#if>>Практика 3</button>
    </form>
    <form action="/open_Level1_control" method="get">
        <button type="submit" class="btn btn-primary m-1" style="width: 10rem" <#if user.cryptoProgress lt 4>disabled</#if>>Контроль</button>
    </form>
</div>