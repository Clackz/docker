FROM node:lts-alpine3.13

LABEL AUTHOR="Clackz" \
      VERSION=0.0.1

ENV DEFAULT_LIST_FILE=crontab_list.sh \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=https://github.com/JDHelloWorld/jd_scripts.git \
    REPO_BRANCH=main \
    DOCKER_URL=https://github.com/Clackz/docker.git

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq \
    && apk add --update python3-dev py3-pip \
    && pip3 install --upgrade pip \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && git clone -b $REPO_BRANCH $REPO_URL /scripts \
    && cd /scripts \
    && pip3 install -r requirements.txt \
    && mkdir logs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install \
    && npm install typescript ts-node \
    && git clone $DOCKER_URL\
    && cp /scripts/docker/docker_entrypoint.sh /usr/local/bin \
    && chmod +x /usr/local/bin/docker_entrypoint.sh \
    && sed -i "/root()/d" /scripts/getCookie.py 

WORKDIR /scripts

ENTRYPOINT ["docker_entrypoint.sh"]

CMD [ "crond" ]