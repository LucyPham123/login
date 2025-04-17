TODO:

1. Set localization -> change language (required)
![alt text](image.png)

2. Update these files to the current theme folder
    - template.ftl      // common layout 
    - login-reset-password.ftl
    - login-page-expired.ftl
    - update config theme.properties (locales=en,tr  , internationalizationEnabled=true)
    - messages
    - resources





-----step run local: ------
- docker build -t keycloak-theme .
- docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin keycloak-theme start-dev


- set theme
 my-custom-theme

login-reset-password.ftl
![alt text](image-1.png)

login-page-expired.ftl
![alt text](image-2.png)


