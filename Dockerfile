FROM node:lts-alpine3.12
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add git
RUN npm config set registry https://registry.npm.taobao.org
WORKDIR /workspace
RUN git clone https://github.com/Kaiyiwing/qwerty-learner.git .
RUN yarn
EXPOSE 3000
CMD yarn start