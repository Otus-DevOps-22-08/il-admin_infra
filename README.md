# Выполнено ДЗ №9

# Cделано:

- Сделал вывод в terraform outputs внутренних адресов dp и app хостов
- Написал плейбук reddit_app_one_play.yml для запуска всех приложений и сортировой старта по тэгам и лимитам
- Написал плейбук reddit_app_multiple_plays.yml для запуска всех приложений только по тэгам
- Плейбук reddit_app_multiple_plays.yml разбит на три отдельных плейбука для запуска приложений по отдельности
- Написал site.yml в который импортятся все три плейбука и последовательно запускаются
- Bash скрипты для конфигурирования packer шаблона заменил на соответствующие плейбуки packer_db.yml и packer_app.yml
- Заменил провиженеры в Packer app.json и db.json на деплой с помощью плейбуков
- Запёк новые packer образы
- Заменил значения новых id шаблонов образов в terraform.tfvars
- Переразвернул stage, запустил site.yml и проверил работу приложения по externai_ip:9292
