<#include "../header.ftlh">

<div style="display: flex; flex-direction: row">
    <form action="/openCryptanalysisLevels" method="get" style="margin-right: 2rem">
        <button type="submit" class="btn btn-primary">Криптоанализ</button>
    </form>
    <form action="/openSteganographyLevels" method="get">
        <button type="submit" class="btn btn-primary">Стеганография</button>
    </form>
</div>

<#include "../footer.ftlh">