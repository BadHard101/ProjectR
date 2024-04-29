<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProjectR</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div style="display: flex; flex-direction: row">
        <a href="/">
            <img src="https://private-user-images.githubusercontent.com/46607313/325890056-0701a9b2-3f6d-4b8d-807c-7928d97968e2.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQxMTc3MDQsIm5iZiI6MTcxNDExNzQwNCwicGF0aCI6Ii80NjYwNzMxMy8zMjU4OTAwNTYtMDcwMWE5YjItM2Y2ZC00YjhkLTgwN2MtNzkyOGQ5Nzk2OGUyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI2VDA3NDMyNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTUyODFjNmEyYWQzZDcwZjg3Nzg2N2ZhODAzZWQ2YTJjZjMxNDZhNmRhNDM5ZmU1NGRhMjdmYWNiYzNhYjk5YTImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.iEayVkKfLxfuK_tyKRLtApYate7RRz1fCJ8NI_S--Yg"
                 style="max-hight: 100px; max-width: 100px; margin: 0 1rem">
        </a>
        <#if user.email??>
            <div style="display: flex; flex-direction: column; width: 100%">
                <h3>Пользователь: <i>${user.name}</i></h3>
                <#if user.isActive()>
                    <div class="row button-row">
                        <div class="col-md-4">
                            <a href="/account" class="btn btn-primary btn-block" style="background-color: #9966cc; border: #9966cc;">Аккаунт</a>
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn btn-warning btn-block" onclick="confirmReset()" style="background-color: #FFD500; border: #9966cc; color: #fff;">Сбросить
                                прогресс
                            </button>
                        </div>
                        <#if user.isAdmin() == true>
                            <div class="col-md-4">
                                <a href="/admin/panel" class="btn btn-primary btn-block"> Панель администратора</a>
                            </div>
                        </#if>
                        <div class="col-md-4 mt-3 mt-md-0">
                            <form action="/logout" method="post" class="d-inline">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <input type="submit" style="background-color:#00008B; border: #9966cc;" value="Выйти" class="btn btn-danger btn-block"/>
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