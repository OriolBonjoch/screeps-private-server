FROM node:10-alpine
RUN apk --update add python make g++ \
 &&     rm -rf /var/cache/apk/* \
 && 	npm install --unsafe-perm -g screeps@4.0.X

LABEL maintainer "OriolBonjoch"

VOLUME ["/screeps"]
WORKDIR /screeps

EXPOSE 21025
EXPOSE 21026

COPY data/entrypoint.sh /usr/local/bin/
COPY data/config.yml /screeps/
RUN chmod 777 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["screeps", "start"]