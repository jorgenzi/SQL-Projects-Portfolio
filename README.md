# SQL-Projects-Portfolio

## 🎯 О проекте

Этот репозиторий — портфолио выполненных заданий по **углублённому изучению SQL**, созданное на примере учебной базы данных пиццерий. 

### 📦 Что внутри:
- ✅ **9 тематических модулей** с нарастающей сложностью
- ✅ **70+ практических заданий** с подробными решениями
- ✅ **Реальные бизнес-кейсы**: аналитика, оптимизация запросов, автоматизация логики
- ✅ **Чистый SQL + расширения PostgreSQL**: CTE, оконные функции, триггеры, индексы

### 📦 Структура репозитория

- **📦 SQL-Projects-Portfolio**
  - `📄 README.md` — Этот файл
  - `📁 sql_simple_request/` — 🗄️ Модель данных (источник для всех модулей)
    - `📄 model.sql` — Схема БД: person, pizzeria, menu, person_visits, person_order
  - `📁 sql_basic/` — 🔹 Модуль 1: Базовые SELECT
    - `📄 day01_ex00.sql ... ex05.sql` — Фильтрация, сортировка, подзапросы
    - `📄 Subject.md`
  - `📁 sql_joins/` — 🔹 Модуль 2: Множества и соединения
    - `📄 day02_ex00.sql ... ex07.sql` — UNION, JOIN, CTE
    - `📄 Subject.md`
  - `📁 sql_analytics/` — 🔹 Модуль 3: Агрегация и аналитика
    - `📄 day03_ex00.sql ... ex09.sql` — GROUP BY, HAVING, метрики
    - `📄 Subject.md`
  - `📁 sql_DML/` — 🔹 Модуль 4: Модификация данных
    - `📄 day04_ex00.sql ... ex12.sql` — INSERT, UPDATE, DELETE
    - `📄 Subject.md`
  - `📁 sql_constraint/` — 🔹 Модуль 5: Ограничения и целостность
    - `📄 day05_ex00.sql ... ex06.sql` — PK, FK, CHECK, последовательности
    - `📄 Subject.md`
  - `📁 sql_view/` — 🔹 Модуль 6: Представления
    - `📄 day06_ex00.sql ... ex08.sql` — VIEW, материализованные представления
    - `📄 Subject.md`
  - `📁 sql_index/` — 🔹 Модуль 7: Продвинутые индексы
    - `📄 day07_ex00.sql ... ex06.sql` — B-Tree, функциональные, частичные индексы
    - `📄 Subject.md`
  - `📁 sql_function/` — 🔹 Модуль 8: Функции и триггеры
    - `📄 day08_ex00.sql ... ex08.sql` — PL/pgSQL, аудит, бизнес-логика
    - `📄 Subject.md`
  - `📁 sql_recursion/` — 🔹 Модуль 9: Рекурсия и графы
    - `📄 day09_ex00.sql ... ex01.sql` — Traveling Salesman Problem в SQL
    - `📄 Subject.md

## 🚀 Быстрый старт

1. Склонируйте репозиторий и перейдите в папку проекта:
   git clone https://github.com/your-username/SQL-Projects-Portfolio.git
   cd SQL-Projects-Portfolio
  
2. Запустите экземпляр PostgreSQL (выберите один вариант):
  - 🐳 Через Docker (рекомендуется): docker-compose up -d
  - 💻 Локально: убедитесь, что служба активна, и создайте пустую БД: createdb pizza_db

3. Инициализируйте базу учебной схемой и данными:
  - psql -d pizza_db -f sql_simple_request/model.sql

4. Выполните нужное задание:
    - Откройте терминал: psql -d pizza_db
    - Запустите конкретный скрипт: \i sql_basic/day01_ex00.sql
    - Проверьте результат запросом: SELECT * FROM person WHERE address = 'Казань';
   
5. (Опционально) Используйте скрипт быстрого сброса БД:
    - Создайте в корне файл init.sh, скопируйте в него код инициализации
    - Дайте права на выполнение: chmod +x init.sh
    - Запускайте перед стартом каждого нового модуля: ./init.sh

## 📊 Чек-лист навыков

✅ Базовые SELECT ✔️
sql_basic

✅ Фильтрация и сортировка ✔️
Все модули

✅ Подзапросы (FROM, SELECT, WHERE) ✔️
sql_basic, sql_joins

✅ UNION / EXCEPT / INTERSECT ✔️
sql_joins

✅ JOIN всех типов ✔️
sql_joins, sql_analytics

✅ CTE и рекурсивные CTE ✔️
sql_joins, sql_recursion

✅ Агрегация: COUNT, AVG, SUM ✔️
sql_analytics

✅ GROUP BY + HAVING ✔️
sql_analytics

✅ Оконные функции ✔️
sql_analytics

✅ INSERT / UPDATE / DELETE ✔️
sql_DML

✅ Ограничения: PK, FK, CHECK ✔️
sql_constraint

✅ Индексы и EXPLAIN ANALYZE ✔️
sql_index

✅ VIEW / MATERIALIZED VIEW ✔️
sql_view

✅ Функции и триггеры (PL/pgSQL) ✔️
sql_function

✅ Рекурсия и графы ✔️
sql_recursion
