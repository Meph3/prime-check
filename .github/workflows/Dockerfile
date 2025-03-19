# Используем официальный образ Ubuntu
FROM ubuntu:latest

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
