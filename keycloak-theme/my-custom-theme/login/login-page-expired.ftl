<!DOCTYPE html>
<html lang="${locale.current!}">

<head>
    <head>
        <!-- ...keep the old head links (favicon, title page...) -->
        <!-- // TODO : add new styles.css in head   -->
        <link href="${url.resourcesPath}/css/style.css" rel="stylesheet" type="text/css">
    </head>
</head>

<body>
    <#include "template.ftl">
        <div class="right-content">
            <div class="container-expired">
                <div class="text-link-expired">${msg("linkExpired")}</div>
                <button type="submit" class="btn-back" onclick="window.location.href=`https://devexa.devexperts.com/backoffice/login`">
                    ${msg("backToLogin")}
                </button>
            </div>
        </div>
</body>
</html>