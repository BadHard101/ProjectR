<!DOCTYPE html>
<html>
<head>
    <title>ProjectR</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="shortcut icon"
            <#--          head-->
          href="https://private-user-images.githubusercontent.com/46607313/325907421-ae316c13-2eca-43e6-86a2-2191fe921d25.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDI5ODIsIm5iZiI6MTcxNTE0MjY4MiwicGF0aCI6Ii80NjYwNzMxMy8zMjU5MDc0MjEtYWUzMTZjMTMtMmVjYS00M2U2LTg2YTItMjE5MWZlOTIxZDI1LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MzEyMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWRmNzlhYWZhYzI2MDBkNDkyMTJhZjc4NTBlNTA3NDkyYTBlN2UyZTZhYjcyM2IzNzhkNzQ0MjRmNjM0MWJlZjcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.1dZ6SjNEbao94MDO5VpX1LYq9evJO3qsgOEqtAEADrw"
          type="image/png">
    <style>
        .fullbg {
            /*background 2*/
            background: url("https://private-user-images.githubusercontent.com/46607313/328519930-d93e1d69-535a-416d-b1e4-e3ebcde7b24d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDMwMjgsIm5iZiI6MTcxNTE0MjcyOCwicGF0aCI6Ii80NjYwNzMxMy8zMjg1MTk5MzAtZDkzZTFkNjktNTM1YS00MTZkLWIxZTQtZTNlYmNkZTdiMjRkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MzIwOFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTlkYTM2ZGRmZjk5NmZhYjFmYjYyNTQ4ODE5MWQwZDdjMDU3ZTIzYmQ2NWE4NGRhZjE5YTAxZDVjMGJlZmRhNGYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.ALcVCtBK99OBHVYTUSvnPu1KgxL0idbnCw-zDDaFALk") no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            height: 100vh;
            min-height: 100vh;

            overflow: hidden;
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

        .row {
            display: grid;
            grid-template-columns: repeat(3, minmax(150px, 1fr));
            gap: 10px;
            justify-content: center;
        }

        .FOX {
            display: flex;
            align-items: end;
            justify-content: center;
            height: 100%;
        }

        .FOX img {
            width: 100%;
            height: auto;
        }

        @media (max-width: 700px) {
            .FOX {
                display: none;
            }
            .row {
                display: flex;
            }
        }

    </style>
</head>
<body>
<div class="fullbg">

    <div
         class="row">

        <div class="container">
            <h1 class="mt-4" style="float:center;">ProjectR</h1>

            <div style="width: 400px; margin: 30% auto auto; background: #f9f9f9; padding: 20px; border-radius: 10px; text-align: center;">

                <h4 class="mt-4">Авторизация</h4> <br>

                <#if errorMessage??>
                    <h2 style="color: red; font-size: 18px;">${errorMessage}</h2>
                </#if>

                <form action="/login" method="post">
                    <div class="form-group" style="text-align: left;">
                        <label for="username">Email:</label>
                        <input type="email" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group" style="text-align: left;">
                        <label for="password">Пароль:</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" margin="6em" class="btn btn-primary"
                            style="background-color: #9966cc; border: #9966cc;">Вход
                    </button>
                </form>
                <br>
                <a href="/registration" style="color: #9966cc;">Зарегистрироваться</a>
                <br>

            </div>

        </div>

        <div class="FOX">
            <img
                    <#--fullFoxWithoutBg -->
                 src="https://private-user-images.githubusercontent.com/46607313/328532653-85cec768-397b-49bc-87f7-0120f0fe049e.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTUxNDExNjksIm5iZiI6MTcxNTE0MDg2OSwicGF0aCI6Ii80NjYwNzMxMy8zMjg1MzI2NTMtODVjZWM3NjgtMzk3Yi00OWJjLTg3ZjctMDEyMGYwZmUwNDllLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTA4VDA0MDEwOVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWQ0MDUzMmY1YjZhMTAzM2Y0NTc3NzIwN2QyMTkxNmJhOWZhY2RlNWFlZTA5OTQ5MzM3NjVkY2VmYjA4ODBlODMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.xN2pFxvDognUeDHSEE8ZSAf3o3NmMZUBMyzeCXvc69s"
            >
        </div>

    </div>

</div>
</body>
</html>