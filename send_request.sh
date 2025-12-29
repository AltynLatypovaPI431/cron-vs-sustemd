#!/bin/bash

# Лог файл
LOG_FILE="/practice4/logs/execution.log"

# Создаем директорию логов если нет
mkdir -p /practice4/logs

# Записываем в лог
echo "=== CRON EXECUTION: $(date '+%Y-%m-%d %H:%M:%S') ===" >> $LOG_FILE
echo "User: $(whoami)" >> $LOG_FILE
echo "Directory: $(pwd)" >> $LOG_FILE

# Отправляем HTTP запрос
echo "Sending HTTP request to httpbin.org..." >> $LOG_FILE
curl -s https://httpbin.org/get | head -10 >> $LOG_FILE 2>&1

echo "Status: Success" >> $LOG_FILE
echo "--- End of execution ---" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Script executed. Check log: $LOG_FILE"
