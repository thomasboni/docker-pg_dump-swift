FROM postgres:11.5-alpine

ENV OS_IDENTITY_API_VERSION 3
ENV OS_USER_DOMAIN_NAME Default
ENV OS_PROJECT_DOMAIN_NAME Default
ENV DB_PORT 5432

COPY docker-entrypoint.sh docker-entrypoint.sh

RUN apk add python3 \
            gcc \
            python3-dev \
            linux-headers \
            musl-dev

RUN pip3 install python-swiftclient \
                 python-keystoneclient

RUN chmod a+x ./docker-entrypoint.sh

EXPOSE ""
ENTRYPOINT ["./docker-entrypoint.sh"]
