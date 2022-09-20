# Выполнено ДЗ №3

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
# Самостоятельное задание

Для подключения в одну команду можно использовать сервер с внешним адресом как jump-host
```sh
ssh -J appuser@84.201.172.13 appuser@10.128.0.30
```

Работоспособность проверил, успешно соединился

# Дополнительное задание:

Для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства можно:

- Создать конфигурационный файл touch ~/.ssh/config
- Добавить в конфиг два сервера
```sh
##bastion
Host bastion
HostName 84.201.172.13
User appuser
IdentityFile ~/.ssh/config/appuser

##someinternalhost
Host someinternalhost
HostName 10.128.0.30
User appuser
IdentityFile ~/.ssh/config/appuser
ProxyJump bastion
```

После этого можно подключаться к серверам по командам
```sh
ssh bastion
ssh someinternalhost
```

Работоспособность также проверил, успешно соединился


## Как запустить проект:
```sh
bastion_IP = 84.201.172.13
someinternalhost_IP = 10.128.0.30
```

## Как проверить работоспособность:
Сервер VPN получил Letencrypt сертификат, доступен по адресу https://84-201-172-13.sslip.io/

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
