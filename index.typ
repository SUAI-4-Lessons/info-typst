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

