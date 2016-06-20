FROM nginx
RUN apt-get -y update
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get -y install git
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/kyuden/ecs-sampole.git /usr/share/nginx/html
RUN cd /usr/share/nginx/html && \
    git checkout 62a1e6674a1c2d36f4f2fab4bf801b64bef659b3