<form action="/openLevel1_theory" method="get">
    <#--if `int` < 1-->
    <button type="submit" <#if user.email == "j@j2">disabled</#if>>Теория</button>
</form>
<form action="/openLevel1_practice" method="get">
    <#--if `int` < 2-->
    <button type="submit" <#if user.email == "j@j2">disabled</#if>>Практика</button>
</form>
<form action="/openLevel1_control" method="get">
    <#--if `int` < 3-->
    <button type="submit" <#if user.email == "j@j">disabled</#if>>Контроль</button>
</form>