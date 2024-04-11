<#include "../header.ftlh">

<form action="/open_Level1_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 0>disabled</#if>>Уровень 1</button>
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
</form>

<#include "../footer.ftlh">