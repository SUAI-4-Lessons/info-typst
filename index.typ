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
  table-of-contents: outline(depth: 2),
  preface: [
    #include "questions.typ"
  ],
  external-link-circle: false
)


#include "src/000_информатика_это.typ"

#include "src/001_типы_сигналов.typ"

#include "src/002_принципы_фон_неймана.typ"

#include "src/003_данные_в_вм.typ"

#include "src/004_типы_данных.typ"

#include "src/005_перевод_систем_счисления.typ"


#include "src/006_представление_чисел_в_вм.typ"

#include "src/007_алгоритм_преобразования_вещ_числа.typ"

#include "src/008_числа_в_прям_и_доп_коде.typ"

#include "src/009_особ_вып_арифметики_в_вм.typ"


#include "src/010_особ_вып_умножения.typ"

#include "src/011_диапозон_представление_чисел_в_разл_форматах.typ"

#include "src/012_инф_меры_и_основы_эфф_кодирования.typ"

#include "src/013_помехоустойчивый_код.typ"

#include "src/014_символьный_тип_данных.typ"



/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

#include "src/п1_matlab.typ"