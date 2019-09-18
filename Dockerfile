FROM postgres:11.5-alpine

ENV OS_IDENTITY_API_VERSION 3
ENV OS_USER_DOMAIN_NAME Default
ENV OS_PROJECT_DOMAIN_NAME Default
ENV DB_PORT 5432

RUN apk add python3 && pip3 install python-swiftclient
COPY docker-entrypoint.sh docker-entrypoint.sh

EXPOSE ""
ENTRYPOINT ["docker-entrypoint.sh"]
