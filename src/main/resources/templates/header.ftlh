<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>КриптоЛис</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon"
            <#--head-->
          href="https://i.ibb.co/MgN0HT0/head.png"
          type="image/png">
    <style>
        .fullbgLevels {
            /*background 2 - AuthBG*/
            /*background: url("https://i.ibb.co/yByM2DK/bg4.png") no-repeat center center fixed;*/
            background-size: cover;
            text-align: center;
            height: 100vh;
            min-height: 100vh;
        }

        body {
            font-size: 20px;
        }

    </style>
</head>
<body
<#--        class="fullbgLevels"-->
>
<div class="container mt-5">
    <div style="display: flex; flex-direction: row">
        <a href="/">
            <#-- full fox with bg-->
            <img src="https://i.ibb.co/V2zbqXD/Fox-Without-BG.png"
                 style="max-hight: 100px; max-width: 100px; margin: 0 1rem">
        </a>
        <#if user.email??>
            <div style="display: flex; flex-direction: column; width: 100%">
                <h3>Пользователь: <i>${user.name}</i></h3>
                <#if user.isActive()>
                    <div class="row button-row">
                        <div class="col-md-4">
                            <a href="/account" class="btn btn-primary btn-block"
                               style="background-color: #9966cc; border: #9966cc;">Аккаунт</a>
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn btn-warning btn-block" onclick="confirmReset()"
                                    style="background-color: #FFD500; border: #9966cc; color: #fff;">Сбросить
                                прогресс
                            </button>
                        </div>
                        <#if user.isAdmin() == true>
                            <div class="col-md-4">
                                <a href="/admin/panel" class="btn btn-primary btn-block"> Панель администратора</a>
                            </div>
                        </#if>
                        <div class="col-md-4">
                            <form action="/logout" method="post" class="d-inline">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <input type="submit" style="background-color:#00008B; border: #9966cc;" value="Выйти"
                                       class="btn btn-danger btn-block"/>
                            </form>
                        </div>
                    </div>
                </#if>
            </div>
        <#else>
            <a href="/login" class="btn btn-primary">Войти</a>
        </#if>
    </div>
    <hr>