#import "UEH/cover.typ": ueh-project

#let TEMPLATE(doc) = [
  #set page(
    paper: "a4",
    margin: (x: 1.8cm, y: 1.5cm),
    numbering: "1",
    number-align: right
  )
  #set text(font: "Times New Roman", size: 13pt, lang: "vi")
  #set heading(numbering: "1.1.1")
  #set par(justify: true)

  
  #set page(footer: none)
  #show: ueh-project.with()
  #outline(
    title: [Mục lục],
  )
  
  
  #pagebreak()
  #set page(numbering: "1", footer: auto)
  #counter(page).update(1)
  
  #doc
  #pagebreak()
  #bibliography(
    "bibliography.bib",
    title: "Tài liệu tham khảo",
    style: "apa"
  )
]
