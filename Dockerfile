FROM debian:stretch

RUN apt update && \
    apt upgrade -y && \
    apt install -y nodejs nodejs-legacy npm && \
    rm -rf /var/lib/apt
    
RUN npm install -g elm elm-test elm-oracle

ENTRYPOINT ["/usr/local/bin/elm"]
CMD ["--version"]

USER nobody
