FROM ubuntu:latest

COPY helloworld.sh /helloworld.sh
RUN chmod +x /helloworld.sh

CMD /helloworld.sh

