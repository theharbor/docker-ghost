FROM harbor/base:legacy
MAINTAINER Nick Groenen

ENV NODE_ENV production
ENV GHOST_VERSION 0.5.5
ENV GHOST_HOME /ghost

COPY bin/build.sh /build.sh
RUN /build.sh && rm /build.sh
COPY conf/supervisor/*.conf /etc/supervisor/conf.d/

WORKDIR ${GHOST_HOME}
COPY bin/build_ghost.sh /build_ghost.sh
RUN su --command /build_ghost.sh ghost && rm /build_ghost.sh

COPY ansible /opt/ansible/

EXPOSE 80
EXPOSE 443
