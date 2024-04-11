<div style="display: flex; flex-direction: row">
    <form action="/open_Level1_theory" method="get">
        <button type="submit" class="btn btn-primary mr-2" <#if user.cryptoProgress lt 0>disabled</#if>>Теория</button>
    </form>
    <form action="/open_Level1_practice" method="get">
        <button type="submit" class="btn btn-primary mr-2" <#if user.cryptoProgress lt 1>disabled</#if>>Практика</button>
    </form>
    <form action="/open_Level1_control" method="get">
        <button type="submit" class="btn btn-primary" <#if user.cryptoProgress lt 2>disabled</#if>>Контроль</button>
    </form>
</div>