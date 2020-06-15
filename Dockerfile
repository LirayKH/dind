#FROM docker:18.09.6
FROM docker:19.03.11

LABEL maintainer="Yehor Kuts <liraykh@gmail.com>"

ENV APP_NAME dind
ENV APP_INSTALL_PATH /opt/${APP_NAME}

WORKDIR ${APP_INSTALL_PATH}

COPY scripts .

RUN apk add --no-cache iptables bash

ENTRYPOINT [ "./start.sh" ]

CMD [ "docker", "run", "nginx:latest" ]