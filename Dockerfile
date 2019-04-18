FROM gcr.io/google-appengine/php
RUN apt-get --allow-unauthenticated -y upgrade
RUN apt-get --allow-unauthenticated -y update
RUN apt-get --allow-unauthenticated -y install libav-tools ffmpeg nmap vim wget