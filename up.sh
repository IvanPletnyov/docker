#!/bin/bash

docker rm -f allo_unit_test;
docker images prune;
docker image rm $(docker images -aq --filter 'reference=docker_mysql_main_db:*');
docker volume rm docker_mysql_data;
docker-compose up --build -d;

max_wait_seconds=600;
echo 'Идет разворачивание базы...';
echo 'Проверка каждые 3 сек.';
log_lines_count=$(docker logs allo_unit_test 2>&1 | grep "mysqld: ready for connections" | wc -l);
is_connected_before_terminate=1;
while [ ! ${log_lines_count} = 2 ]; do
    log_lines_count=$(docker logs allo_unit_test 2>&1 | grep "mysqld: ready for connections" | wc -l);
    sleep 3;
    max_wait_seconds=`expr ${max_wait_seconds} - 3`;
    echo "Все еще ждем... До выхода из счетчика осталось ${max_wait_seconds} сек.";

  if ((${max_wait_seconds} <= 0)) ; then
    is_connected_before_terminate=0;
    echo 'Прошло более 10 минут, пробуй конектиться к БД...'
    break;
  fi
done

if [ ${is_connected_before_terminate} = 1 ]; then
  echo 'Установлено, можно использовать.'
fi
