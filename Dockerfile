FROM ubuntu:22.04  

RUN apt-get update && apt-get install -y dpkg  

COPY prime-check-deb/usr/local/bin/prime-check /usr/bin/prime-check  

RUN chmod +x /usr/bin/prime-check  

CMD ["sh", "-c", "echo '5' | /usr/bin/prime-check"]
