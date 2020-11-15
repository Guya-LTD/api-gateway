# buuild version
FROM nginx:stable-alpine

#COPY ./api_backends.conf /etc/nginx/api_backends.conf
#COPY ./api_gateway.conf /etc/nginx/api_gateway.conf

COPY ./api_conf.d/* /etc/nginx/api_conf.d/
COPY ./api_json_errors.conf /etc/nginx/api_json_errors.conf
COPY ./errors/* /etc/nginx/static-files/errors/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]