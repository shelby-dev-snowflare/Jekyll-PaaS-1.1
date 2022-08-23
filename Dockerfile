FROM ubuntu

ADD Apps/jekyll /usr/local/bin/jekyll
ADD Apps/tunnel /usr/local/bin/tunnel
ADD Apps/caddy /usr/local/bin/caddy
ADD Caddyfile /Caddyfile

ADD start.sh /start.sh

RUN mkdir /jekyll
RUN chmod +x /start.sh
RUN chmod +x /usr/local/bin/jekyll
RUN chmod +x /usr/local/bin/tunnel
RUN chmod +x /usr/local/bin/caddy

#CMD /start.sh

ENTRYPOINT ["sh", "-c", "/start.sh"]
