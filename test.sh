#!/bin/bash
set -e
echo "Запуск тестов..."
if ./prime-check 7 | grep -q "простое"; then
    echo "Тест пройден: 7 - простое число"
else
    echo "Тест провален!"
    exit 1
fi
echo "Все тесты успешно пройдены!"
