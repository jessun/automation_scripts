FROM --platform=$TARGETPLATFORM centos:7 as base
WORKDIR  /work

COPY * /docker-build/
RUN cd /docker-build/ && chmod +x ./bootstrap.sh && ./bootstrap.sh 





# RUN wget -O /usr/bin/swagger https://github.com/go-swagger/go-swagger/releases/download/v0.19.0/swagger_linux_$TARGETARCH && \
#     chmod +x /usr/bin/swagger && \
#
ENTRYPOINT ["/bin/bash", "/root/.gvm/scripts/gvm"]
