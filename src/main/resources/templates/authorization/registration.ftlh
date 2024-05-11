

<!DOCTYPE html>
<html>
<head>
    <title>ProjectR</title>
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
            <h1 class="mt-4" style="float:center;">ProjectR</h1>

            <div style="
            min-width: 400px;
            margin: 10% 0;
            background: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;">

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
                    <button type="submit" style="background-color: #9966cc; border: #9966cc;" class="btn btn-primary">
                        Зарегистрироваться
                    </button>
                </form>
                <br>
                <a href="/login" style="color: #9966cc;">Авторизоваться</a>
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