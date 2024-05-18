<#include "../header.ftlh">

<div class="user-info">
    <h1>Пользователь ${user.name}</h1>
    <p>Почта: ${user.email}</p>
<#--    <p>Номер телефона: ${user.phoneNumber}</p>-->
    <p>Дата создания: ${user.dateOfCreated.toLocalDate()} /
        ${user.dateOfCreated.getHour()}:${user.dateOfCreated.getMinute()}:${user.dateOfCreated.getSecond()}</p>
</div>
<hr>

<#include "../footer.ftlh">
