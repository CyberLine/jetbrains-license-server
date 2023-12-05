FROM amazoncorretto:11.0.21-alpine3.18

MAINTAINER Alexander Over "https://github.com/CyberLine"

ENV BASE_DIR=/usr/local/license-server

COPY --chmod=755 ./docker-entrypoint.sh /

RUN apk add --no-cache curl bash && \
  /usr/bin/curl -o installer.zip -Ss https://download-cf.jetbrains.com/lcsrv/license-server-installer.zip?version=38945 && \
  mkdir $BASE_DIR && \
  unzip -d $BASE_DIR installer.zip && \
  rm -f installer.zip

EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
