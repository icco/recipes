FROM klakegg/hugo:onbuild AS hugo

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=hugo /target /usr/share/nginx/html
RUN ls -alh
EXPOSE 8080
