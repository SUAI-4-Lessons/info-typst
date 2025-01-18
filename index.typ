#import "@preview/ilm:1.4.0": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#show: ilm.with(
  title: [Информатика],
  author: 
    "Панков Василий <pank-su>",
  date: datetime.today(),
  abstract: [Конспект и материалы для подготовки к экзаменам],
  table-of-contents: outline(depth: 2)
)

#include "src/000_информатика_это.typ"

#include "src/001_типы_сигналов.typ"

#include "src/002_принципы_фон_неймана.typ"

#include "src/003_данные_в_вм.typ"

#include "src/004_типы_данных.typ"

#include "src/005_перевод_систем_счисления.typ"


#include "src/006_представление_чисел_в_вм.typ"

#include "src/007_алгоритм_преобразования_вещ_числа.typ"