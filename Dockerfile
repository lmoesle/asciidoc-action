FROM lmoesle/base:latest

USER root

RUN apt-get update && apt-get install -y make ruby \
    && gem install asciidoctor \
    && gem install asciidoctor-pdf

CMD ["make"]