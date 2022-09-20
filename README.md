# il-admin_infra
il-admin Infra repository


##################

bastion homework
bastion_IP = 84.201.172.13
someinternalhost_IP = 10.128.0.30


Самостоятельное задание
Для подключения в одну команду можно использовать сервер с внешним адресом как jump-host
ssh -J appuser@84.201.172.13 appuser@10.128.0.30
Работоспособность проверил, успешно соединился


Дополнительное задание:
Для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства можно:
1) Создать конфигурационный файл ssh в ~/.ssh/config
2) Добавить в конфиг два сервера

********************
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

********************

После этого можно подключаться к серверам по командам
ssh bastion - к серверу
ssh someinternalhost - к серверу с внутренним адресом

Работоспособность также проверил, успешно соединился

********************

Сервер VPN получил Letencrypt сертификат, достпе по адресу https://84-201-172-13.sslip.io/
