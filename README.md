# Выполнено ДЗ №5

# Cделано:
# 9.1
С помощью packer в клауде создан image
Собрана конфигурация image-файла ubuntu16.json для запуска с отдельными provisioners ruby и mongo
Переменные размещены в variables.json
Запуск
```sh
packer build --var-file variables.json ubuntu16.json
```
Из имаджа руками была запущена машина, установлена puma. Снаружи по ip:9292 доступна

# 10.1
Собирается image-файл из immutable.json. Имя reddit-full
В образ добавлена установка и запуск сразу ruby, mongo и puma
Скрипт установки и запуска ruby, mongo и puma
```sh
packer/files/deploy_all.sh
```

Файл с конфигурацией службы puma копируется из:
```sh
packer/files/puma.service
```

# 10.2
Создан скрипт запуска виртуальной машины в облаке из образа reddit-full
```sh
config-scripts/create-reddit-vm.sh
```
Работа скрипта проверена, приложение успешно развёрнуто


## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
