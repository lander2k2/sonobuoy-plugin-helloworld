FROM ubuntu:latest

COPY helloworld.sh /usr/local/bin/helloworld.sh
RUN chmod +x /usr/local/bin/helloworld.sh

CMD /usr/local/bin/helloworld.sh

