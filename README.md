# Tuning

Сервис для проверки твиков php

## INSTALL
    
    composer install
    
    docker-compose up -d
    
## TEST

    autocannon -c 5000 -x -t 15 localhost:32800

    ab -klc 5000 -n 50000 -r http://localhost:32800/
    
    
## CONFIGS

.env:
    
    SOCKET_LISTEN_QUEUE=10000
