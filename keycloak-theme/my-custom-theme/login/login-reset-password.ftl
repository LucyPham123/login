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
            <div class="login-container">
                <div class="text-header">${msg("welcome")}</div>
                <!-- check update url action like devexa when apply
                EG : https://devexa.devexperts.com/auth/realms/Devexa/login-actions/required-action?session_code=U8LMJLCn68qlCGqlgcFPbSvtQY2yJ9KEIKy5q4l4-n0&execution=UPDATE_PASSWORD&client_id=web-admin-backend&tab_id=KM5_XmL1TrE -->
                <form action="${url.loginAction}" method="post" class="login-form">
                    <!-- check update url action like devexa when apply -->
                    <input type="text" id="username" name="username" value="larry.vuong@devexperts.com" autocomplete="username" readonly="readonly" style="display:none;">
                    <div class="form-group">
                        <label for="createPassword">${msg("createPassword")}</label>
                        <input type="password" id="password-new" name="password-new" class="custom-input" autofocus
                            required />
                    </div>
                    <input type="hidden" id="password-confirm" name="password-confirm" />
                    <#if execution=="UPDATE_PASSWORD">
                        <div class="form-group">
                            <label class="checkbox-label">
                                <input type="checkbox" name="isSignOutFromOtherDevices" value="true" checked />
                                ${msg("signOutOtherDevices")}
                            </label>
                        </div>
                    </#if>

                    <div class="form-group">
                        <button type="submit" class="btn-submit" id="submit-btn" disabled>
                            <#if execution=="UPDATE_PASSWORD">
                                ${msg("save")}
                                <#else>
                                    ${msg("join")}
                            </#if>
                        </button>
                    </div>
                </form>

                <script>
                    const passwordInput = document.getElementById('password-new');
                    const confirmInput = document.getElementById('password-confirm');
                    const submitBtn = document.getElementById('submit-btn');

                    function checkPasswordInput() {
                        const value = passwordInput.value.trim();
                        confirmInput.value = value;
                        if (submitBtn) {
                            submitBtn.disabled = value === '';
                        }
                    }
                    passwordInput.addEventListener('input', checkPasswordInput);
                    window.addEventListener('DOMContentLoaded', checkPasswordInput);
                </script>
            </div>
        </div>
</body>
</html>