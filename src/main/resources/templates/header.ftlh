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
            background: url("https://i.ibb.co/WVfTQ7b/bg4.png") no-repeat center top;
            /*color: #2a2828;*/
        }

        body {
            font-size: 20px;
        }

    </style>
</head>
<body class="fullbgLevels">
<div class="container mt-5">
    <div style="display: flex; flex-direction: row">
        <a href="/" style="display: flex; align-items: center; justify-content: center">
            <#-- full fox with bg-->
            <img src="https://i.ibb.co/V2zbqXD/Fox-Without-BG.png"
                 style="max-hight: 110px; max-width: 110px; margin: 0 1rem">
        </a>
        <#if user.email??>
            <div style="display: flex; flex-direction: column; width: 100%">
                <h3>Пользователь: <i>${user.name}</i></h3>
                <#if user.isActive()>
                    <div class="row button-row">
                        <div class="col-md-4">
                            <a href="/account" class="btn btn-primary btn-block"
                               style="background-color: #8247be; border: #8247be;">Аккаунт</a>
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn btn-warning btn-block" onclick="confirmReset()"
                                    style="background-color: #92256E; border: #92256E; color: #fff;">Сбросить
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
