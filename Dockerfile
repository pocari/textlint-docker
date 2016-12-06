FROM node:7.2.0

WORKDIR /var/textlint

RUN apt-get update && apt-get install -y \
            locales \
            --no-install-recommends && \
            rm -rf /var/lib/apt/lists/*

RUN npm install -g \
        textlint \
	textlint-rule-preset-ja-technical-writing

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:en
ENV LC_ALL ja_JP.UTF-8

CMD ["base"]
