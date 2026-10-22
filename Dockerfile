FROM nginx:alpine

ARG GIT_COMMIT=local
ENV APP_COMMIT=${GIT_COMMIT}
ENV NGINX_ENVSUBST_FILTER=^(APP_COMMIT)$

COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template
COPY *.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/health || exit 1

CMD ["nginx", "-g", "daemon off;"]
