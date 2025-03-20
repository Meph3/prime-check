FROM ubuntu:latest
 

RUN apt-get install -y libstdc++6


RUN apt-get update && apt-get install -y dpkg  

COPY prime-check-deb/usr/local/bin/prime-check /usr/bin/prime-check  

RUN chmod +x /usr/bin/prime-check  

CMD ["/usr/bin/prime-check", "5"]

