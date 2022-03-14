FROM alpine
RUN apk --no-cache add curl
RUN adduser -S --no-create-home matterbridge matterbridge
RUN matterbridgeVersion=$(echo "$(curl --silent "https://api.github.com/repos/42wim/matterbridge/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed -E 's/v//g')") \
  && curl -LJO https://github.com/42wim/matterbridge/releases/download/v$matterbridgeVersion/matterbridge-$matterbridgeVersion-linux-64bit \
  && mv matterbridge-* /usr/bin/matterbridge
RUN chmod 0755 /usr/bin/matterbridge
RUN mkdir /etc/matterbridge \
  && touch /etc/matterbridge/matterbridge.toml
ENTRYPOINT ["matterbridge", "-conf", "/etc/matterbridge/matterbridge.toml"]
