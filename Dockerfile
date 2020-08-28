FROM python:3
USER root


WORKDIR /root/opt/

RUN apt-get update
RUN apt-get -y install locales && \
  localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less \
  nodejs \
  npm  \
  tmux
RUN npm install -g nodemon


RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -U discord.py \
  requests \
  python-dotenv
