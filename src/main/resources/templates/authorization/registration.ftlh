<!DOCTYPE html>
<html>
<head>
    <title>ProjectR</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="shortcut icon" href="https://private-user-images.githubusercontent.com/46607313/325907421-ae316c13-2eca-43e6-86a2-2191fe921d25.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUwODY5OTcsIm5iZiI6MTcxNTA4NjY5NywicGF0aCI6Ii80NjYwNzMxMy8zMjU5MDc0MjEtYWUzMTZjMTMtMmVjYS00M2U2LTg2YTItMjE5MWZlOTIxZDI1LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDclMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA3VDEyNTgxN1omWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTFjODBjM2Q2ZWI5ZDdkYzE5YzVkMDJjYTM3YTcxOWRhODk1Mjk0NjNiNzEzY2VhNGU4ZjNkZTQyNjU5YTI4NGImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.aBLbP5DWIGjIr_QAOoW1-RNR4Pe8bn9lGAM87wSZA6o" type="image/png">
    <style>

        .fullbg {
            background: url("https://private-user-images.githubusercontent.com/46607313/328519930-d93e1d69-535a-416d-b1e4-e3ebcde7b24d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUwODQ5ODksIm5iZiI6MTcxNTA4NDY4OSwicGF0aCI6Ii80NjYwNzMxMy8zMjg1MTk5MzAtZDkzZTFkNjktNTM1YS00MTZkLWIxZTQtZTNlYmNkZTdiMjRkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDclMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA3VDEyMjQ0OVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTcyMjFlMzA2ZjU3ZGIxNDc3ZTU1MTlmOGU4ODhiZWQyZDU1N2JkNmFjOGIwZDVkYWU5OTY1YjA3OWZmNDZkNTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.XS7l7jeEwYIkav2yrepSG5tWeNhoK2rhdue5HPLYuZE") no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            height: 100vh;
            min-height: 100vh;
                        }

        .FOX {
            float: left;
            grid-row: 1;
            grid-column: 1;
                        }

        .container {
            grid-row: 1;
            grid-column: 2;
            }

    </style>
</head>
<body>
<div class="fullbg">

<div style="display: grid; grid-template-columns: repeat(3, minmax(150px, 1fr)); gap: 10px; justify-content: center;"
    class="row">

<div class="container">
    <h1 class="mt-3">ProjectR</h1>
    <div style="width: 400px; margin: 20% auto auto; background: #f9f9f9; padding: 20px; border-radius: 10px; text-align: center;">

    <h4>Регистрация</h4>

    <#if errorMessage??>
            <h2 style="color: red; font-size: 18px;">${errorMessage}</h2>
        </#if>

    <form action="/registration" method="post">
        <div class="mb-3" style="text-align: left;">
            <label for="username" class="form-label">Имя:</label>
            <input type="text" id="username" name="name" class="form-control">
        </div>
        <div class="mb-3" style="text-align: left;">
            <label for="email" class="form-label">Эл. почта:</label>
            <input type="email" id="email" name="email" class="form-control">
        </div>
        <div class="mb-3" style="text-align: left;">
            <label for="phoneNumber" class="form-label">Номер телефона:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" class="form-control">
        </div>
        <div class="mb-3" style="text-align: left;">
            <label for="password" class="form-label">Пароль:</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="background-color: #9966cc; border: #9966cc;" class="btn btn-primary">Зарегистрироваться</button>
    </form>
    </div>
</div>

<div class FOX>
    <img style="width: 120%; height: 110%;" src="https://private-user-images.githubusercontent.com/46607313/328532653-85cec768-397b-49bc-87f7-0120f0fe049e.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUwODc1MTUsIm5iZiI6MTcxNTA4NzIxNSwicGF0aCI6Ii80NjYwNzMxMy8zMjg1MzI2NTMtODVjZWM3NjgtMzk3Yi00OWJjLTg3ZjctMDEyMGYwZmUwNDllLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDclMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA3VDEzMDY1NVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWIzYmE1NmM4NTJjNTRjZmZhYjkwZGNhMWQ3MDg5YmM5MDQxM2FiYTU5MzFmZDQxNzQ1OGFhNTY2OWNmMWZlYjMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.gfKxeQll_rqyb8-fM0HGP4kl1yFTqn5MaoVTWCcjIeA"
</div>
</div>
</div>
</body>
</html>