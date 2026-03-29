FROM nginx


RUN rm -rf /usr/share/nginx/html/*


COPY index.html /usr/share/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
