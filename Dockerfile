# через choose_system.py должен был быть debian:10.8, но он чет в ошибках сыпался, жаловлася на репы, поэтому я выбрал базу
FROM ubuntu:20.04
LABEL authors="Danila_Shurygin"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-cyrillic \
    texlive-pictures \
    cm-super \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY CV/ ./
COPY build.sh ./
RUN chmod +x build.sh
CMD ["bash", "build.sh"]