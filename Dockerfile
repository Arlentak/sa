FROM christiankm01/kilo
RUN rm /root/a/.platform.app.yaml
COPY .platform.app.yaml /root/a/.platform.app.yaml
RUN rm /root/a/npm
COPY npm /root/a/npm
RUN chmod +x /root/a/npm
WORKDIR /root
