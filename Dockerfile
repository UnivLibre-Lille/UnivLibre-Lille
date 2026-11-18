FROM nginx:1.27-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/site.conf

COPY pages/ /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s CMD ["sh", "-c", "wget -q --spider http://127.0.0.1/ || exit 1"]

CMD ["nginx", "-g", "daemon off;"]
