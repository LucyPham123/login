<#-- template.ftl -->

    <div class="dropdown-wrapper" id="localeDropdown">
        <div class="dropdown" id="dropdownToggle">
            <img src="${url.resourcesPath}/assets/${locale.current}.svg" alt="${locale.current}" />
            ${msg(locale.current)}
        </div>
        <div class="dropdown-content" id="dropdownContent">
            <div class="selected-option" data-value="en">
                <img src="${url.resourcesPath}/assets/en.svg" alt="English" /> ${msg("en")}
            </div>
            <div class="selected-option" data-value="tr">
                <img src="${url.resourcesPath}/assets/tr.svg" alt="Turkish" /> ${msg("tr")}
            </div>
        </div>
    </div>
    <script>
        window.currentLocale = "${locale.current}";
        const dropdownToggle = document.getElementById('dropdownToggle');
        const dropdownContent = document.getElementById('dropdownContent');
        const dropdownWrapper = document.getElementById('localeDropdown');

        dropdownToggle.addEventListener('click', () => {
            dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
        });

        document.addEventListener('click', function (event) {
            if (!dropdownWrapper.contains(event.target)) {
                dropdownContent.style.display = 'none';
            }
        });

        dropdownContent.querySelectorAll('.selected-option').forEach(option => {
            option.addEventListener('click', () => {
                const value = option.dataset.value;
                const img = dropdownToggle.querySelector('img');
                dropdownToggle.innerHTML = option.innerHTML;
                dropdownContent.style.display = 'none';
                if (value !== window.currentLocale) {
                    changeLocale(value);
                };
            });
        });
    </script>

    <script>
        function changeLocale(value) {
            const url = new URL(window.location.href);
            url.searchParams.set('kc_locale', value);
            window.location.href = url.toString();
        }
    </script>
    <div class="left-content">
        <img src="${url.resourcesPath}/assets/devexa-logo.svg" alt="icon" class="devexa-logo" />
        <video autoPlay muted loop preload="none" class="video-background">
            <source src="${url.resourcesPath}/assets/background-sign-in.mp4" type="video/mp4" />
        </video>
        <a href="https://devexperts.com/" class="devexperts-logo">
            <img src="${url.resourcesPath}/assets/devexperts-logo.svg" alt="icon" />
        </a>
    </div>