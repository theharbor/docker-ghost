FROM zoni/ubuntu:latest
MAINTAINER Nick Groenen

ENV NODE_ENV production
ENV GHOST_VERSION 0.5.5
ENV GHOST_HOME /ghost

COPY bin/build*.sh /
RUN /build1.sh && rm /build*.sh

WORKDIR ${GHOST_HOME}
CMD ["runas", "ghost", "npm", "start"]

EXPOSE 2368
