#!/bin/bash
set -e

echo "Запуск тестов..."

# Проверяем, существует ли исполняемый файл
if [[ ! -x "./prime-check" ]]; then
    echo "Ошибка: файл prime-check не найден или не является исполняемым!"
    exit 1
fi

# Проверяем, выводит ли программа правильный результат
output=$(./prime-check 7 | tr -d '\r')

if echo "$output" | grep -iq "прост"; then
    echo "Тест пройден: 7 - простое число"
else
    echo "Тест провален! Полученный вывод:"
    echo "$output"
    exit 1
fi

echo "Все тесты успешно пройдены!"
