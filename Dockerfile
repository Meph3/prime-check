FROM ubuntu:22.04  

# Устанавливаем необходимые зависимости
RUN apt-get update && apt-get install -y dpkg  

# Копируем deb-пакет
COPY prime-check-deb.deb /tmp/prime-check.deb  

# Устанавливаем deb-пакет
RUN dpkg -i /tmp/prime-check.deb || apt-get install -f -y  

# Делаем бинарный файл исполнимым
RUN chmod +x /usr/local/bin/prime-check  

# Запуск программы
CMD ["/usr/local/bin/prime-check"]
