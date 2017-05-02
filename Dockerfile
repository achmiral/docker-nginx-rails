# Base image:
FROM nginx:alpine

MAINTAINER Miral Achmed <miral.achmed@gmail.com>

RUN rm -f /etc/nginx/conf.d/*

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY app.conf /etc/nginx/conf.d/app.conf
 
EXPOSE 80 443
 
# Use the "exec" form of CMD so Nginx shuts down gracefully on SIGTERM (i.e. `docker stop`)
CMD [ "nginx", "-g", "daemon off;" ]

