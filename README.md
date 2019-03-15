# Tuning

Сервис для проверки твиков nginx (`nginx.conf`) и php-fpm (`zz-workers.conf`)

## INSTALL
    
    docker-compose up -d
    
    ./update-unit-conf.sh
    
## TEST

    autocannon -c 5000 -x -t 15 localhost:32800

    ab -klc 5000 -n 50000 -r http://localhost:32800/
    
    
## CONFIGS

Nginx Unit config:`docker/nginx/config.json`

.env:
    
    SOCKET_LISTEN_QUEUE=10000
