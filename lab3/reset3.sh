#!/bin/sh
# Скрипт для удаления пользователей, групп и каталогов
# Лабораторная работа № 3, Задание 3.1

# Удаление файлов и каталогов
rm -rf /srv/dir1 /srv/dir2

# Удаление пользователей и групп
userdel -r user1
userdel -r user2
userdel -r user3
groupdel group1
groupdel group2

echo "Все созданные данные удалены."
