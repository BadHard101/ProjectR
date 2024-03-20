<form action="/openLevel1_theory" method="get">
    <button type="submit">Теория</button>
</form>
<form action="/openLevel1_practice" method="get">
    <button type="submit" <#if user.email == "r@r2">disabled</#if>>Практика</button>
</form>
<form action="/openLevel1_control" method="get">
    <button type="submit" <#if user.email == "r@r">disabled</#if>>Контроль</button>
</form>