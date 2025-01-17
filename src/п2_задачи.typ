#import "@preview/gentle-clues:1.1.0": *

= Задачи

== Код Морзе

Условие:

«Код Мо́рзе — способ знакового кодирования (представление букв алфавита, цифр,
знаков препинания и других символов последовательностью сигналов, например,
длинных и коротких: «тире» и «точек»). За единицу времени принимается
длительность одной точки. Длительность тире равна трём точкам. Пауза между
элементами одного знака — одна точка, между знаками в слове — 3 точки, между
словами — 7 точек.» (википедия).

Перечислите символы алфавита, используемого азбукой Морзе для кодирования
передаваемых символов, определите размер алфавита, определите, какое количество
информации несет каждый символ алфавита.

#task(title: "Решение")[

Символы алфавита: `.-`

Размер алфавита: 2

Количество информации каждого символа: 1 бит

]

== Квантование

Условие:

Для преобразования непрерывного сигнала в код используется аналого-цифровой
преобразователь (АЦП). Входное напряжение АЦП изменяется от $x_min = 0$ до $x_max$ =
1В, на выходе АЦП 16 разрядный двоичный код. Определите модуль ошибки
квантования АЦП, если квантование равномерное, с совмещением нижнего и верхнего
уровней с $x_min$ и $x_max$ . Ассоциирование сигнала происходит с ближайшим
уровнем квантования. Ответ дать в мкВ, целую и дробную часть разделить точкой,
точность 2 знака после запятой.

#task(title: "Решение")[

  $
    (x_max - x_min)/2^n = 1/2^16 = 1/65536 = 1.5258 dot 10^(-5) В
  $
  т.к. микро (мк) -- это 10^(-6), то ответ: *15.26* ]

== Минимальное основание

Условие:

Какую систему счисления с минимальным основанием нужно использовать, чтобы
закодировать равномерным кодом алфавит мощностью А = 352 в 3-х разрядным кодовым
словом.

#task(
  title: "Решение",
)[

  Воспользуемся формулой для получения количество символов в алфавите:

  $
    q^n >= A
  $

  - $q$ -- система счисления
  - $n$ -- количество разрядов

  Решим:

  $ q^3 >= 352 $ тогда давайте подберём это число, $7^3 = 343$, $8^3 = 512$
]

== Максимальная мощность

Условие:

Алфавит какой максимальной мощности можно закодировать, используя 16-тиричную
систему счисления и трехразрядные кодовые слова.

#task(title: "Решение")[

  $ 16^3 = 4096 $
]

== Время передачи файла 

Условие:

Текст, состоящий из символов алфавита А=100 представлен в коде UNICODE (n=16).
Всего в тексте 10000 символов. Энтропия равна 2,5 бит. За какое минимальное
время может быть передан файл, если пропускная способность канала связи 1000 бит
в секунду.

#task(
  title: "Решение",
)[
  Это довольно странная задача, так как нам говорят энтропию и при этом дана
  кодировка unicode с 16 битами на один символ. Как будто сюда просто накидали
  данных, но мы посчитаем два значения: _идельные_ и _неидельные_.

  $ T_"ид" = (2.5 * 10000)/1000 = 25 с $
  $ T_"неид" = (16 * 10000)/1000 = 160 с $

]


== Диапазон значений

Это задача на @14

=== Задача 1

В общем виде укажите наименьшее и наибольшее целое двоичное число со знаком, которое может быть представлено в разрядной сетке размером $n$ в дополнительном коде.

$ -2^(n-1) <= x <= 2^(n-1) - 1 $

=== Задача 2

В общем виде укажите наименьшее и наибольшее значение двоичной правильной дроби в формате с фиксированной запятой, которое может быть представлено в разрядной сетке размером $n$ в дополнительном коде.

$ -1 <= X <= 1-2^(-(n-1)) $

=== Задача 3

В общем виде укажите наименьшее и наибольшее целое двоичное число без знака, которое может быть представлено в разрядной сетке размером $n$.

$ 0 <= X <= 2^(n-1) $

=== Задача 4

В общем виде укажите наименьшее и наибольшее число в формате с плавающей запятой, если разрядность мантиссы $n_m$ , а порядка $n_p$.

$ X <= (2-2^{-n_m - 1}) dot 2^(2^(n_p - 1)) $

== Мера Хартли

Условие:

Текст, состоящий из символов алфавита А=70 представлен в коде ASCII, n = 8. Всего в тексте 10000 символов. Энтропия равна 2,5 бит. Определите количество информации по Хартли, которую несет каждый символ текста.

#task(title: "Решение")[

  $
     log_2 70 = 6.13
  $
   ]


