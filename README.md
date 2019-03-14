# Tuning

Сервис для проверки твиков nginx (`nginx.conf`) и php-fpm (`zz-workers.conf`)

## INSTALL
    
    docker-compose build
    
    docker-compose up -d
    
## TEST

    autocannon -c 5000 -x -t 15 localhost:32800

    ab -klc 5000 -n 50000 -r http://localhost:32800/
    
## MONITORING

PHP-FPM:
    
    http://localhost:32800/status
    
Nginx:

    http://localhost:32800/status/nginx
    
    docker logs -f --tail 0 tuning-server | grep -v 200

Подсчет ошибок:

    docker logs tuning-server | grep -v 200 | wc -l
    
## CONFIGS

.env:

    INSTALL_XDEBUG=false
    
    FPM_PM_MAX_CHILDREN=128
    
    FPM_LISTEN_QUEUE=10000