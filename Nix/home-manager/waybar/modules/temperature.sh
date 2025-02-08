#!/usr/bin/env bash

# Получаем данные о температуре процессора
temp=$(sensors | grep 'CPU' | awk '{print $2}' | tr -d '+°C')

# Определяем эмодзи в зависимости от температуры
if awk -v t="$temp" 'BEGIN { exit !(t >= 90) }'; then
    icon=""
elif awk -v t="$temp" 'BEGIN { exit !(t >= 80) }'; then
    icon=""
elif awk -v t="$temp" 'BEGIN { exit !(t >= 70) }'; then
    icon=""
elif awk -v t="$temp" 'BEGIN { exit !(t >= 60) }'; then
    icon=""
else
    icon=""
fi

# Формируем вывод для Waybar
echo "${temp}°C ${icon}"
