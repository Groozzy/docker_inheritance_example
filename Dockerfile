FROM ubuntu:latest AS base

# Установка зависимостей
RUN apt-get update && apt-get install -y python3 python3-pip

# Создание первого образа
FROM base AS app1
WORKDIR /app1
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Создание второго образа
FROM base AS app2
WORKDIR /app2
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Создание третьего образа
FROM base AS app3
WORKDIR /app3
COPY requirements.txt .
RUN pip3 install -r requirements.txt
