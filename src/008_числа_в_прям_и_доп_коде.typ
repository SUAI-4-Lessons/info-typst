= Числа в прямом и дополнительных кодах

Для сложения двух чисел по правилам алгебры необходимо выполнять дополнительные
действия:

1. Определение и сравнение знаков операндов
2. Сравнение модулей чисел организация разветвлённой структуры алгоритма, что
  приводит к перерасходу времени выполнения операции

== Прямой код

Прямой код (принятый в алгебре) используется для представления мантиссы в числах
с плавающей точкой.

#table(
  columns: 2,
  table.header([➕ Плюсы], [➖ Минусы]),
  [Простое получение кода отрицательных чисел],
  [ Выполнение арифметических операций требует раздельной обработки значащей части
    числа и знака, для которого не определены арифметические операции. Это требует
    усложнения алгоритмов вычисления либо изменений в архитектуре процессора. ],
  [Значащая часть числа является его модулем],
  [Число 0 имеет два значения - "+0" и "-0"],
  [При заданной разрядной сетке количество положительных чисел равно отрицательным],
)

== Дополнительный код

$ A - B = A + (-B) = A + (q^n - B) - q^n = A + B_д - q^n \
A - B = A + B_д $

Особенности:

- представление положительных чисел в прямом и дополнительном коде
- знаковый разряд может рассматриваться как число и, соответственно, его
  можно использовать в вычислениях вместе с разрядами значащей части
  числа;
- Наиболее простой и быстрый алгоритм выполнения сложения чисел со
  знаком
- Чтобы изменить знак числа, записанного в дополнительном коде,
  достаточно взять дополнение;
- Наличие только одного нуля;
- Представление не симметрично -- число отрицательных чисел


/ Важно: Для того чтобы найти дополнение для числа в любой системе счисления, необходимо инверсию всех разрядов и прибавить единицу к младшему разряду.


