FROM nginx
COPY ./resume.json /usr/share/nginx/html
COPY ./resume.pdf /usr/share/nginx/html
