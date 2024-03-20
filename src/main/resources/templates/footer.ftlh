</div>
<script>
    function confirmReset() {
        if (confirm("Вы уверены, что хотите сбросить ВЕСЬ СВОЙ прогресс?")) {
            // Если пользователь нажал "ОК" в диалоговом окне, перенаправляем на страницу сброса прогресса
            window.location.href = "/resetProgress";
        }
    }
</script>
</body>
</html>