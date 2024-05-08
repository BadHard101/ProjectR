<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProjectR</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon"
            <#--head-->
          href="https://private-user-images.githubusercontent.com/46607313/325907421-ae316c13-2eca-43e6-86a2-2191fe921d25.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDI5ODIsIm5iZiI6MTcxNTE0MjY4MiwicGF0aCI6Ii80NjYwNzMxMy8zMjU5MDc0MjEtYWUzMTZjMTMtMmVjYS00M2U2LTg2YTItMjE5MWZlOTIxZDI1LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MzEyMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWRmNzlhYWZhYzI2MDBkNDkyMTJhZjc4NTBlNTA3NDkyYTBlN2UyZTZhYjcyM2IzNzhkNzQ0MjRmNjM0MWJlZjcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.1dZ6SjNEbao94MDO5VpX1LYq9evJO3qsgOEqtAEADrw"
          type="image/png">
    <style>
        .fullbgLevels {
            /*background 3*/
            background: url("https://private-user-images.githubusercontent.com/46607313/328582720-111553df-fde0-408d-8d05-0d1dade56db8.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDMwMjgsIm5iZiI6MTcxNTE0MjcyOCwicGF0aCI6Ii80NjYwNzMxMy8zMjg1ODI3MjAtMTExNTUzZGYtZmRlMC00MDhkLThkMDUtMGQxZGFkZTU2ZGI4LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MzIwOFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWY1OGNlN2UxYWJlZjhmODdlYThjYTU4NGZjYzYzNGY0M2QxOTBlNWI3NTkwYzg1ZDAxMTU0ZTAxNTRlYjY5NDcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.aXiR93b1dByRXOiX4218zRu7UMobyXozVXIRYMXrjkA") no-repeat center center fixed;
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
<body>
<div class="container mt-5">
    <div style="display: flex; flex-direction: row">
        <a href="/">
            <#-- full fox with bg-->
            <img src="https://private-user-images.githubusercontent.com/46607313/325890056-0701a9b2-3f6d-4b8d-807c-7928d97968e2.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDMwODYsIm5iZiI6MTcxNTE0Mjc4NiwicGF0aCI6Ii80NjYwNzMxMy8zMjU4OTAwNTYtMDcwMWE5YjItM2Y2ZC00YjhkLTgwN2MtNzkyOGQ5Nzk2OGUyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MzMwNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWY5MGQ5N2FlMGMwYmMyOTM5NjZjMDc3M2E1NjJlODljZTY5NmQ0YTU0NGNkYTVkODIyNjcxMTU4OWFmNTkxNGQmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.mDnDAr1TaVVxCYa35KhqYpvT-pQ2zhC_4R-2V2HT0f0"
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
                        <div class="col-md-4 mt-3 mt-md-0">
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