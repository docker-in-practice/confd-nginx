FROM nginx:1.9.0
ADD https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd #&&
    #mkdir -p /etc/confd/templates /etc/confd/conf.d

COPY app-nginx.toml /etc/confd/conf.d/
COPY nginx.tmpl /etc/confd/templates/
COPY start.sh /start.sh
ENTRYPOINT ["sh", "-c", "/start.sh \"$@\"", "start"]
CMD []
