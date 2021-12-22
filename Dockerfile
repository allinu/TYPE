FROM nginx
COPY /home/runner/work/qwerty-learner/qwerty-learner/src/dist/ /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
VOLUME [ "/usr/share/nginx/html/" ]
VOLUME [ "/etc/nginx/conf.d/" ]
EXPOSE 80