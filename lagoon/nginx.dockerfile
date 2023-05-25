ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/nginx:latest

RUN mkdir -p /etc/nginx/conf.d/magento
COPY lagoon/nginx/magento /etc/nginx/conf.d/magento/
COPY lagoon/nginx/nginx.conf /etc/nginx/conf.d/app.conf
RUN fix-permissions /etc/nginx

COPY --from=cli /app /app

# Define where the Drupal Root is located
ENV WEBROOT=pub
