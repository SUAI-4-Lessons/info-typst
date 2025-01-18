= Символьные данные как простейший тип данных

- _Символьные данные_ -- все символы алфавита, используемые в системе
- Определены операции:
  - Конкатенация --- сцепление
  - Сравнение в лексикографическом порядке (по индексу в национальном алфавите)
  - Сравнение по коду внутреннему представлению в ВМ


==  Желаемые требования к кодированию символов

- Лексикографический порядок
- (Код прописных) < (строчных символов)
- Простое преобразование прописных и строчных букв
- Простое преобразования символов чисел в число
- Наличие управляющих символов и символов разделителей
- _Совместимость_

== Кодовая таблица ASCII

#image("images/15_ascii.png")


Управляющие символы с тремя нулями в начале.

Коды символом десятичных символов можно получить благодаря конъюнкции
на "00001111".

Игнорируем 5 разряд для того чтобы регистр не имел значения: "b" 0100
0010 -> 0110 0010

== Unicode

- UCS(Universal Character Set) - универсальный набор символов
- UTF(Unicode Transformation Format) - семейство кодировок 

=== UTF-8

Неравномерный код каждый символ занимает от 1 до 6 байт.
Код символа содержит маркерные разряды и значащую часть.

от 1 до 6 байт 

Количество октетов лежит в первом слове в начале (октет).:

- 1  -> Значащих 7:

  0xxxxxxx
- 2 -> Значащих 11:
  110xxxxx 10xxxxxx

10 - начало след. слова

```
Все остальные  UTF работают равносильно
```