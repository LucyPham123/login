<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>${msg("errorTitle")}</title>
    <style>
        body {
            font-family: sans-serif;
            padding: 2em;
            background: #f8f9fa;
        }

        h1 {
            color: #dc3545;
        }

        .content {
            margin-top: 1.5em;
        }
    </style>
</head>

<body>
    <h1>${msg("errorTitle")}</h1>
    <div class="content">
        <#if message?? && message.summary??>
            <p>${message.summary?no_esc}</p>
        <#else>
        <p>${msg("unexpectedErrorMessage")}</p>
        </#if>
        <p><a href="${properties.logoUrl!" /"}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
    </div>
</body>

</html>