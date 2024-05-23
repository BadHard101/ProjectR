<#include "../header.ftlh">

<style>
.overlay {
        position: relative;
        display: inline-block;
        border-radius: 10px;
        padding: 1% 3%;
        margin-top: 1%;
        margin-bottom: 2%;
        min-width: 100%;
    }

    .overlay::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(176, 200, 253, 0.5); /* Белый цвет с прозрачностью 50% */
        z-index: -1;
        border-radius: 15px; /* Задает округлые границы */
        filter: blur(10px); /* Задает размытие границ */
    }
</style>

<div class="overlay">
<div class="user-info">
    <h1>Пользователь ${user.name}</h1>
    <p>Почта: ${user.email}</p>
    <p>Номер телефона: ${user.phoneNumber}</p>
    <p>Дата создания: ${user.dateOfCreated.toLocalDate()} /
        ${user.dateOfCreated.getHour()}:${user.dateOfCreated.getMinute()}:${user.dateOfCreated.getSecond()}</p>
</div>

<hr>
</div>
<#include "../footer.ftlh">
