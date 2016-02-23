FROM frolvlad/alpine-glibc

# Install Gor
RUN apk add --update -t deps wget ca-certificates \
  && wget https://github.com/buger/gor/releases/download/v0.10.1/gor_0.10.1_x64.tar.gz \
  && tar zxvf gor_0.10.1_x64.tar.gz \
  && chmod +x gor \
  && mv ./gor /usr/local/bin/gor \
  && apk del --purge deps \
  && rm /var/cache/apk/*

CMD ["gor"]
