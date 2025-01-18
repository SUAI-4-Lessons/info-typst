#import "@preview/gentle-clues:1.1.0": *

= Представление чисел в разрядной сетке в вычислительной машине <8>

== Представление целых чисел без знака
/ Разрядная сетка: Количество двоичных разрядов выделяемых для хранения данного числа

#figure(image("images/06_целые_числа_без_знака.png"))

1. Разрядная сетка для определённая типа данных имеет фиксированный размер
  состоящий n-разрядов.
2. Размер разрядной сетки программы задаётся на этапе объявления переменных и
  зависит от типа данных.
3. Обязательным требованием любой системы программирования является одинаковость
  типов в операндах выражения, а последовательность и одинаковость размера данных,
  то есть разрядной сетки
4. Так как для двоичной системы счисления алфавит: 0 и 1, может представить только
  целое число без знака.

== Представление целых чисел со знаком

Для указания знака разрядная сетка разбивается на два поля:

- Старший разряд - выделяется для хранения знака числа (знаковый разряд):
  - 0 - положительное
  - 1 - отрицательное
- Остальные разряды хранят значащую часть числа

#figure(image("images/07_целые_числа_со_знаком.png"))

== Вещественные числа <9>

=== С фиксированной точкой

1. Целые число -- как действительное у которого отсутствует дробная часть
2. Целая часть числа равна 0, то число правильная дробь

Число с фиксированной точкой представляется следующим образом:

Число с фиксированной точкой представляется следующим образом:

$ x = X K_m $

$x$ -- машинное преставление числа с фиксированной точкой

$X$ -- исходное число

$K_m$ -- масштабный коэффициент, который выбирается из условий конкретной
разрядной сетки и не должен допускать выхода исходных чисел и результатов
вычислений за пределы допустимого диапазона.

#tip(title: "")[
  Таким образом, число с фиксированной точкой всегда правильная дробь. 
]

=== С плавающей точкой

Научная запись числа:

$ X = M dot E^p $

где: 
- E = q -- основание системы счисления
- P -- порядок числа 
- M -- мантисса числа

Запись числа в научной форме допускает различные варианты, поэтому для
совместимости различного ПО и оборудования:

Представление чисел в формате с плавающей точкой было стандартизовано и
указано в стандарте IEEE 754

Три основных формата представления двоичных чисел:

- число одинарной точности (=float=)
- число двойной точности (=double=)
- Расширенный формат (=long double= в языке C++)


Для хранения числа в формате с плавающей точкой разбивается на три поля:

- знак числа (1 бит)
- n_p разрядов для хранение порядка
- оставшиеся n_m разрядов хранят мантиссу

Мантисса хранится в нормализованном виде:

$ 1 <= M_n <= E $

для двоичного числа:

$ 1 <= M_n <= 2_10 $


Нормализованная мантисса двоичного числа в целой части всегда равна в 1.

Целая часть не хранится а подразумевается в алгоритмах или в аппаратных
уровнях.

В поле мантиссы разрядной сетки хранится модуль обратной части числа.

Правило нормализации мантиссы:

Для двоичного числа точку разделяющую целую и дробную части необходимо
сдвигать влево или вправо до тех пор пока не будет получена целая часть
числа равная 1.

При этом на каждом шаге сдвига порядок увеличивается при сдвиге вправо
или уменьшается при сдвиге влево.

==== Порядок

- Стандарт IEEE 754 требует, чтобы в поле порядка всегда указывалось
  только целое число без знака
- В поле порядка хранится смещенный на $(2^(n_(p) - 1) - 1)$. 

  Порядок
  $P_("cm")$ называется _характеристикой_

$ P_("cm") = P + (2^(n_p - 1) - 1) $

- Характеристика всегда целое число без знака
