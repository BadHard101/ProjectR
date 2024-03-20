<#include "../header.ftlh">

<form action="/open_Level1_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 0>disabled</#if>>Уровень 1</button>
</form>
<form action="/openLevel2_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 3>disabled</#if>>Уровень 2</button>
</form>
<form action="/openLevel3_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 6>disabled</#if>>Уровень 3</button>
</form>
<form action="/openLevel4_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 9>disabled</#if>>Уровень 4</button>
</form>
<form action="/openLevel5_theory" method="get">
    <button type="submit" <#if user.cryptoProgress lt 12>disabled</#if>>Уровень 5</button>
</form>

<#include "../footer.ftlh">