FROM christiankm01/kilo
RUN echo "platform auth:api-token-login" > /usr/bin/l
RUN chmod +x /usr/bin/l
WORKDIR /root
