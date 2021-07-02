FROM klakegg/hugo:onbuild AS hugo

FROM nginx:alpine

EXPOSE 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
COPY --from=hugo /target .
RUN ls -alh
