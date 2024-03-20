<!DOCTYPE html>
<html>
<head>
    <title>ProjectR</title>
</head>
<body>
<div class="container">
    <#if user.email??>
        <h3>Пользователь: <i>${user.name}</i></h3>
        <#if user.isActive()>
            <!-- Button Row for Sell, Cart, Logout -->
            <div class="row button-row">
                <div class="col-md-4">
                    <a href="/account" class="btn btn-primary btn-block">Аккаунт</a>
                </div>
                <button type="button" class="btn btn-danger" onclick="confirmReset()">Сбросить прогресс</button>
                <#if user.isAdmin() == true>
                    <div class="col-md-4">
                        <a href="/admin/panel" class="btn btn-primary btn-block"> Панель администратора</a>
                    </div>
                </#if>
                <div class="col-md-4">
                    <form action="/logout" method="post" class="d-inline">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Выйти" class="btn btn-danger btn-block"/>
                    </form>
                </div>
            </div>
        </#if>
    <#else>
        <a href="/login" class="btn btn-primary">Войти</a>
    </#if>
    <#if user.isActive()>
    <hr>
</#if>