﻿#Тестовое задания для допуска к онлайн-стажировке от JavaRush

. Cтандартное crud приложение, которое отображаем список всех книг в базе (с пейджингом). 
С возможностью их удаления, редактирования, добавления новых. И поиска по уже существующим.

Запрос для создания базы данных, таблицы и заполнения ее 
тестовыми данными осуществляется с помощью sql запроса из файла:
InitDB.sql. 

После деплоя в Томкэт приложение будет доступно по урл:
http://localhost:номер порта/

===========================
Используемые технологии:
- Maven (для сборки проекта)	
- Spring
- Hibernate (для маппинга сущностей приложения на БД, и работы с БД)
- Tomcat (для тестирования своего приложения)
- Mysql (база данных).

