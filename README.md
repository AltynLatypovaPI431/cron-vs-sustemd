# Практическая работа: Cron vs Systemd

В рамках данной работы рассматриваются два подхода к планированию периодических задач в Linux:

- классический планировщик **cron**
- современный механизм **systemd timers**
  
Для обоих подходов реализована одинаковая задача — периодический запуск bash-скрипта с логированием результата.

## Структура проекта

<img width="545" height="182" alt="image" src="https://github.com/user-attachments/assets/6079c5e0-82ce-47c8-9dd8-aa41f96a3309" />

### 1. Cron jobs

<img width="425" height="46" alt="image" src="https://github.com/user-attachments/assets/6b9e1daf-4357-4543-bf24-7132a55a32ff" />

### 2. Systemd timer  

<img width="516" height="148" alt="image" src="https://github.com/user-attachments/assets/f7f59eb4-6a38-4d3c-acf8-b2e886b4129c" />

### 3. Systemd service

<img width="787" height="112" alt="image" src="https://github.com/user-attachments/assets/34dc293e-24bf-49e7-8cb9-14db141d4b43" />

### 4. Execution logs

<img width="563" height="582" alt="image" src="https://github.com/user-attachments/assets/77c6680c-8042-4443-9299-cc96ea111119" />

## Файлы проекта:
- `cron_scripts/send_request.sh` - скрипт для Cron
- `systemd/send-request.service` - конфигурация сервиса
- `systemd/send-request.timer` - конфигурация таймера
- `execution_logs/execution.log` - логи выполнения
