FROM nginx:latest
RUN mkdir /usr/share/nginx/html/images -p
RUN mkdir /usr/share/nginx/html/fonts -p
RUN mkdir /usr/share/nginx/html/css -p
RUN mkdir /usr/share/nginx/html/js -p
COPY ./html/* /usr/share/nginx/html/
COPY ./html/images/* /usr/share/nginx/html/images/
COPY ./html/fonts/* /usr/share/nginx/html/fonts/
COPY ./html/css/* /usr/share/nginx/html/css/
COPY ./html/js/* /usr/share/nginx/html/js/ 

