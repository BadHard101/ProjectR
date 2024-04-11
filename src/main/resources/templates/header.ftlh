<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProjectR</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <#if user.email??>
        <h3>Пользователь: <i>${user.name}</i></h3>
        <#if user.isActive()>
            <div class="row button-row">
                <div class="col-md-4">
                    <a href="/account" class="btn btn-primary btn-block">Аккаунт</a>
                </div>
                <div class="col-md-4">
                    <button type="button" class="btn btn-warning btn-block" onclick="confirmReset()">Сбросить прогресс</button>
                </div>
                <#if user.isAdmin() == true>
                    <div class="col-md-4">
                        <a href="/admin/panel" class="btn btn-primary btn-block"> Панель администратора</a>
                    </div>
                </#if>
                <div class="col-md-4 mt-3 mt-md-0">
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