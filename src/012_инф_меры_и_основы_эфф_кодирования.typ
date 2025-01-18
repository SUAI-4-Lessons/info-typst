= Информационные меры и основы эффективного кодирования

В общем смысле _неопределённость источника ($Н_и$)_ информации --- всё возможное
количество сообщений, которое может быть передано за один раз.

Пропускная возможность канала связи - количество информация / время передачи.

/ Неопределённость получателя ($Н_п$): --- то количество информации было снято при
передачи сообщения.

$
  Н = Н_и - Н_п
$

== Логарифмическая (аддитивная) мера

Требования:

1. При $Н=0$, $I=0$
2. Аддитивность

$ N = N_1 dot N_2 dot ... dot N_k $

$ I = I_1 dot I_2 dot ... dot I_k $

#figure(image("images/11_графы.png", width: 55%))

Неопределённость по Хартли:

$ I = H = log_a(N) $
где a - основание системы счисления

Какой разрядности нужно использовать разрядную сетку чтобы закодировать алфавит
в двоичном коде.

$ n = log_2 A $

$n$ - количество бит равномерного кода
$А$ - количестов символов в алфавите.

Свойства меры Хартли:

1. Не отрицательность
2. Все символы алфавита полагаются равновероятными
3. При алфавите равному нулю, то мера Хартли равна нулю, так как передаёися один
  символ
4. Аддитивность $ H_x = sum^k_(i=1) H_(x_i) $
5. Численно равна количеству шагов алгоритма для обработки сообщения

== Статистическая мера количества информации

Требования к статистической мере

- непрерывна относительно вероятности (функция от вероятности)
- если все вероятности одинаковы то

=== Статистическая мера Шеннона

Пусть имеется алфавит $А$ из которого составят сообщения с размером $K$. Каждый
символ алфавита встречается в тексте $k_1, k_2, ..., k_A$ раз. Тогда частота
появления символа в тексте $frac(k_i, K) arrow p_i$

Каждый символ несёт информацию I_i

$ I_i = log frac(1, p_i) = - log p_i $

Основание логарифма - система счисления

Средняя информация, которую несёт в себе один символ:

$ I_"avg" - frac(k_1 I_1 + k_2 I_2 + ... + k_A + I_A, K) =
frac(sum^A_(i=1), K) $

Таким образом объединяя всё это получаем меру Шеннона:

$ H = -M sum^A_(i =1) p_i log p_i $

Для А = 2:

$ p_1, p_2 \
p_2 = 1-p_1 $

==== Свойства энтропии

- Неотрицательна
- Энтропия равна 0, тогда и только тогда, когда из вероятностей символа алфавита
  равна 1, а все остальные 0
- Если все вероятности символов одинаковы, энтропия одинакова и равна
  неопределенности по Хартли

  $ H = -sum^A_(i=1) 1/A log 1/A = A/A log A = log
  A $

=== Теорема Шеннона об эффективном кодировании

Любое сообщение, составленное из символов алфавита А, всегда можно закодировать
так, что среднее число бит, проходящих на символ алфавита, будет сколь угодно
близко энтропии, но не меньше её.

#figure(
  image("images/12_график_энтропии.png", width: 80%),
  caption: "График энтропии",
)

== Алгоритм Шеннона-Фано

```
TODO: взять из лабы
```

== Алгоритм Хаффмана

```
TODO: взять из лабы
```

=== Избыточность

/ Избыточность: --- разность между максимально возможным количеством
информации и энтропией называют абсолютно избыточностью информации

Абсолютная избыточность: $ D_"abc" = I_x - I_"ср"$ или $D_"абс" = H_max - H_ш$

Относительная избыточность: $ D = frac(H_{max} - H, H_max) $