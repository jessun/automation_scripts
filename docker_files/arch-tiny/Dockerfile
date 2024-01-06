###########################################################
# Dockerfile for custom Arch Linux base to be as small as possible
#
# Currently 119 MB
############################################################

FROM manjarolinux/base:latest
MAINTAINER jessun <jessun@outlook.com>

WORKDIR /tmp

RUN sed -i "s/#Color/Color/g" /etc/pacman.conf && \
    pacman --noconfirm -Runs gzip sudo gettext less iproute2 procps-ng iputils && \
    find /. -name "*~" -type f -delete && \ 
    rm -fr /usr/share/terminfo/* && \
    rm -r /usr/share/info/* && \
    rm -r /usr/share/man/* && \
    rm -r /usr/share/doc/* && \
    rm -r /usr/share/zoneinfo/* && \
    rm -r /usr/share/i18n/* && \
    rm -fr /var/lib/pacman/sync/* && \
    rm -fr /tmp/*

CMD /sbin/init
