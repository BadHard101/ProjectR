<!DOCTYPE html>
<html>
<head>
    <title>КриптоЛис</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="shortcut icon"
            <#--head-->
          href="https://i.ibb.co/MgN0HT0/head.png"
          type="image/png">
    <style>
        .fullbg {
            /*background 2 - AuthBG*/
            background: url("https://i.ibb.co/gwfMvKs/AuthBG.png") no-repeat center center fixed;
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
            <h1 class="mt-4" style="color: white;float:center; font-size: 36; margin-top: 87px;">КриптоЛис</h1>

            <div style="width: 400px; margin: 30% auto auto; background: #f9f9f9; padding: 30px; border-radius: 20px; text-align: center;">

                <h4 class="mt-4">Авторизация</h4> <br>

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
                    <#if errorMessage??>
                        <p style="color: red; font-size: 18px;">${errorMessage}</p>
                    </#if>
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
                 src="https://i.ibb.co/TqPrfZq/Fox-Without-BG.png"
            >
        </div>

    </div>

</div>
</body>
</html>