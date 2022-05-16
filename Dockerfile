FROM christiankm01/kilo
RUN rm /root/a/.platform.app.yaml
COPY .platform.app.yaml /root/a/.platform.app.yaml

WORKDIR /root
