FROM pjcdawkins/platformsh-cli:latest
RUN mkdir /root/a
COPY ./node /root/a
COPY ./npm /root/a
COPY ./.platform.app.yaml /root/a/.platform.app.yaml
RUN mkdir /root/a/.platform
COPY ./routes.yaml /root/a/routes.yaml
COPY ./services.yaml /root/a/services.yaml


