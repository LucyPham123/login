FROM keycloak/keycloak:latest

# Cài đặt theme của bạn
USER root
COPY ./keycloak-theme/my-custom-theme /opt/keycloak/themes/my-custom-theme
USER keycloak

# Cấu hình các biến môi trường để tắt gửi email
ENV KEYCLOAK_EMAIL_ENABLED=false
ENV KEYCLOAK_SMTP_HOST=localhost
ENV KEYCLOAK_SMTP_PORT=25

# Cấu hình Keycloak để không gửi email (tắt email hoàn toàn)
ENV KEYCLOAK_SMTP_FROM=no-reply@example.com
ENV KEYCLOAK_SMTP_USER=none
ENV KEYCLOAK_SMTP_PASSWORD=none