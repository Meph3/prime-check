# Используем официальный образ Ubuntu
FROM ubuntu:latest

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y build-essential

# Устанавливаем зависимости
RUN apt update && apt install -y build-essential

# Копируем исходный код
WORKDIR /app
COPY . /app

# Даем разрешение на выполнение скриптов
RUN chmod +x build.sh test.sh package.sh

# Собираем проект
RUN ./build.sh

# Запускаем тесты
RUN ./test.sh

# Создаем deb-пакет
RUN ./package.sh

# Определяем точку входа (основной исполняемый файл)
CMD ["./prime-check"]
