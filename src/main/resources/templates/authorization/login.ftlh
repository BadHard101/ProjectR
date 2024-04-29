<!DOCTYPE html>
<html>
<head>
    <title>ProjectR</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="mt-4" style="float:center;">ProjectR</h1>
    <img src="https://private-user-images.githubusercontent.com/46607313/325907421-ae316c13-2eca-43e6-86a2-2191fe921d25.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQxMjEyNzQsIm5iZiI6MTcxNDEyMDk3NCwicGF0aCI6Ii80NjYwNzMxMy8zMjU5MDc0MjEtYWUzMTZjMTMtMmVjYS00M2U2LTg2YTItMjE5MWZlOTIxZDI1LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA0MjYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNDI2VDA4NDI1NFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTA2YTcxODU0MGQ4ZjEzNjBkOGQxN2FlYTk3M2JmNDdiYmFlNmNlMzg5NDFhMDRlOTZmYzY1MWEzZjU0MWFhYTkmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.rJHp3D5KCx9H0QIlpt1LBSBzS5M_822qsXxCml-yyIs"
            alt="Картинка" style="width: 100px; float: center;">
    <hr>
    <h4 class="mt-4">Авторизация</h4> <br>
    <form action="/login" method="post">
        <div class="form-group">
            <label for="username">Email:</label>
            <input type="email" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">Пароль:</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Вход</button>
    </form>
    <br>
    <a href="/registration">Зарегистрироваться</a>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</div>
</body>
</html>