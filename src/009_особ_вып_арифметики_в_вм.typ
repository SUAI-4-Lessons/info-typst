= Особенность выполнения арифметических операций в вычислительной машине

Выполнение арифметических операций операндов с разрядностью n:

- сложение -> $n+1$
- умножение -> $2n$

Происходит _переполнение разрядной сетки_.

- CF - Carry Flag

  В флаг который переносится знак числа

  C1 - фиксирует перенос единицы из старшего разряда значащей части числа в
  знаковый разряд

  С2 - фиксирует наличие переноса единицы из знакового разряда в CF
- OF - Overflow Flag

  Хранит переполнение разрядной сетки

  $ O F = C 1 plus.circle C 2 $

  если (OF == 1), то CF хранит значащую часть результата


== Примеры

Пример 1:

#figure(image("images/08_пример_1.png"))

Итог: Переполнение не произошло, результат: $0_z 111_2 = 0_z 7_(10)$.

Пример 2:

#figure(image("images/09_пример_2.png"))

Имеет место переполнение разрядной сетки в CF находится знак
результата. В знаковом разряде находится старший разряд значащей
части числа. В разрядной сетке результата некорректный
результат: $0_z 1011_2 = 0_z 11_(10)$

== Сложение числе в формате с плавающей точкой 

#figure(image("images/10_сложение_вещ_чисел.jpg"))

$ 6.56 dot 10^5 + 1.25 dot 10^3 = 656 dot 10^3 + 1.25 dot 10 ^ 3
= 657.25 dot 10^3 $

=== Алгоритм сложения в формате с плавающей точкой

1. Если порядки операндов различаются, выполняется
   выравнивание порядков. При этом мантисса операндов
   меньших порядков сдвигается вправо с учётом целой части
   на каждом шаге сдвига порядок увеличивается на один. Сдвиги
   выполняются до тех пор, пока порядки слагаемых не станут равными.
2. Мантиссы складываются по алгоритму алгоритмического сложения
3. Порядок результата приравнивается порядку слагаемых
4. Мантисса результата нормализуется
5. Если разряды разные, то они заполняются незначащими нулями  
