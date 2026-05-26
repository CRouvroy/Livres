#import "@preview/cetz:0.5.2"

#let cpt_part = counter("cpt_part")
#let cpt_def = counter("cpt_def")
#let cpt_prop = counter("cpt_prop")
#let cpt_thm = counter("cpt_thm")
#let cpt_exos = counter("cpt_exos")
#let tot_exos = counter("tot_exos")

#let cpt_qst = counter("cpt_qust")
#let wedge = sym.and

#let margin-size = 0%
#let margin-space = 0.1in

#let graph-ink = luma(35)
#let graph-edge = 1pt + luma(45)
#let graph-node-fill = rgb("#f8fbff")
#let graph-node-stroke = 1pt + blue.darken(35%)
#let arena-sand = rgb("#fff5c8")
#let arena-grid = rgb("#d8c87d")
#let arena-bin-fill = luma(238)
#let arena-bin-stroke = luma(70)

#let graph-friends() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 190 - y)
    let edge(a, b) = line(a, b, stroke: graph-edge)
    let node(pos, label, radius: 17, size: 8.2pt) = {
      circle(pos, radius: radius, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: size, weight: "semibold", fill: graph-ink, label))
    }

    edge(p(32, 55), p(92, 28))
    edge(p(92, 28), p(112, 82))
    edge(p(32, 55), p(112, 82))
    edge(p(92, 28), p(52, 112))
    edge(p(52, 112), p(92, 165))
    edge(p(92, 165), p(162, 138))

    node(p(32, 55), [Bob])
    node(p(92, 28), [Adam])
    node(p(112, 82), [Alice])
    node(p(52, 112), [Eve])
    node(p(92, 165), [Wole])
    node(p(162, 138), [Jack])
  })
]

#let graph-components() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 190 - y)
    let edge(a, b) = line(a, b, stroke: graph-edge)
    let node(pos, label) = {
      circle(pos, radius: 13, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: 10pt, weight: "semibold", fill: graph-ink, label))
    }

    edge(p(105, 24), p(185, 48))
    edge(p(185, 48), p(185, 118))
    edge(p(185, 118), p(145, 162))
    edge(p(105, 24), p(110, 96))
    edge(p(110, 96), p(50, 76))
    edge(p(22, 142), p(76, 168))

    node(p(185, 48), [1])
    node(p(185, 118), [2])
    node(p(145, 162), [3])
    node(p(105, 24), [4])
    node(p(110, 96), [5])
    node(p(50, 76), [6])
    node(p(22, 142), [7])
    node(p(76, 168), [8])
  })
]

#let graph-cycle-example() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 190 - y)
    let edge(a, b) = line(a, b, stroke: graph-edge)
    let node(pos, label) = {
      circle(pos, radius: 13, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: 10pt, weight: "semibold", fill: graph-ink, label))
    }

    edge(p(75, 25), p(135, 60))
    edge(p(135, 60), p(135, 130))
    edge(p(135, 130), p(75, 168))
    edge(p(75, 168), p(65, 105))
    edge(p(65, 105), p(75, 25))
    edge(p(16, 86), p(65, 105))

    node(p(75, 25), [4])
    node(p(135, 60), [1])
    node(p(135, 130), [2])
    node(p(75, 168), [3])
    node(p(65, 105), [5])
    node(p(16, 86), [6])
  })
]

#let graph-directed-example() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 160 - y)
    let node(pos, label, radius: 17, size: 8.2pt) = {
      circle(pos, radius: radius, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: size, weight: "semibold", fill: graph-ink, label))
    }

    set-style(mark: (end: ">", fill: graph-ink, scale: 0.65), stroke: graph-edge)
    line(p(47, 75), p(133, 81))
    line(p(133, 73), p(47, 65))
    line(p(107, 36), p(139, 67))
    line(p(91, 41), p(74, 119))
    line(p(84, 126), p(136, 88))

    node(p(30, 70), [Adam])
    node(p(150, 78), [Bob])
    node(p(95, 25), [Eve])
    node(p(70, 135), [Alice])
  })
]

#let graph-coloring-examples() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let edge(a, b) = line(a, b, stroke: graph-edge)
    let node(pos, label) = {
      circle(pos, radius: 10, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: 8pt, weight: "semibold", fill: graph-ink, label))
    }
    let label(pos, name) = content(pos, text(size: 9pt, weight: "bold", fill: graph-ink, name))

    let a(dx, x, y) = (dx + x, 90 - y)
    label(a(0, 55, 4), [A])
    edge(a(0, 44, 24), a(0, 88, 24))
    edge(a(0, 44, 24), a(0, 20, 64))
    edge(a(0, 44, 24), a(0, 66, 63))
    edge(a(0, 88, 24), a(0, 66, 63))
    edge(a(0, 88, 24), a(0, 108, 64))
    edge(a(0, 20, 64), a(0, 66, 63))
    edge(a(0, 66, 63), a(0, 108, 64))
    edge(a(0, 108, 64), a(0, 86, 86))
    node(a(0, 44, 24), [5])
    node(a(0, 88, 24), [0])
    node(a(0, 20, 64), [1])
    node(a(0, 66, 63), [4])
    node(a(0, 108, 64), [2])
    node(a(0, 86, 86), [3])

    let b(dx, x, y) = (dx + x, 90 - y)
    label(b(155, 48, 4), [B])
    edge(b(155, 48, 18), b(155, 20, 60))
    edge(b(155, 48, 18), b(155, 78, 48))
    edge(b(155, 20, 60), b(155, 78, 48))
    edge(b(155, 20, 60), b(155, 48, 82))
    edge(b(155, 78, 48), b(155, 48, 82))
    node(b(155, 48, 18), [2])
    node(b(155, 20, 60), [1])
    node(b(155, 78, 48), [3])
    node(b(155, 48, 82), [0])

    let c(dx, x, y) = (dx + x, 90 - y)
    label(c(285, 52, 4), [C])
    let ps = (
      c(285, 52, 18),
      c(285, 86, 28),
      c(285, 80, 68),
      c(285, 42, 80),
      c(285, 18, 50),
    )
    for i in range(5) {
      for j in range(i + 1, 5) {
        edge(ps.at(i), ps.at(j))
      }
    }
    node(ps.at(0), [3])
    node(ps.at(1), [1])
    node(ps.at(2), [2])
    node(ps.at(3), [0])
    node(ps.at(4), [4])
  })
]

#let binary-tree-example() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 240 - y)
    let node(pos, label) = {
      circle(pos, radius: 16, fill: graph-node-fill, stroke: graph-node-stroke)
      content(pos, text(size: 13pt, weight: "semibold", fill: graph-ink, label))
    }

    set-style(mark: (end: ">", fill: graph-ink, scale: 0.65), stroke: graph-edge)
    line(p(138, 32), p(73, 75))
    line(p(162, 32), p(227, 75))
    line(p(50, 98), p(26, 138))
    line(p(70, 99), p(92, 137))
    line(p(250, 99), p(277, 137))
    line(p(92, 163), p(68, 202))
    line(p(108, 163), p(136, 202))
    line(p(277, 163), p(249, 202))

    node(p(150, 20), [1])
    node(p(60, 85), [2])
    node(p(240, 85), [3])
    node(p(15, 150), [4])
    node(p(100, 150), [5])
    node(p(285, 150), [6])
    node(p(60, 215), [7])
    node(p(145, 215), [8])
    node(p(240, 215), [9])
  })
]

#let carmin-arena() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let p(x, y) = (x, 86 - y)
    rect(p(0, 0), p(165, 86), fill: arena-sand, stroke: 1pt + arena-grid)

    for x in range(12) {
      line(p(15 * x, 0), p(15 * x, 86), stroke: 0.45pt + arena-grid)
    }
    for y in range(7) {
      line(p(0, 14 * y), p(165, 14 * y), stroke: 0.45pt + arena-grid)
    }

    let bin(x, y) = {
      let cx = 28 + x * 28
      let cy = 20 + y * 19
      rect(p(cx - 7, cy - 4), p(cx + 7, cy + 9), fill: arena-bin-fill, stroke: 0.75pt + arena-bin-stroke)
      rect(p(cx - 10, cy - 9), p(cx + 10, cy - 4), fill: luma(222), stroke: 0.75pt + arena-bin-stroke)
      line(p(cx - 4, cy - 1), p(cx - 4, cy + 7), stroke: 0.4pt + luma(130))
      line(p(cx, cy - 1), p(cx, cy + 7), stroke: 0.4pt + luma(130))
      line(p(cx + 4, cy - 1), p(cx + 4, cy + 7), stroke: 0.4pt + luma(130))
    }

    for y in range(3) {
      for x in range(5) {
        bin(x, y)
      }
    }

    content(p(82, 78), text(size: 7pt, fill: arena-bin-stroke, weight: "semibold")[3 rangées de 5 poubelles])
  })
]

#let hansel-gretel-map() = align(center)[
  #cetz.canvas(length: 1pt, {
    import cetz.draw: *

    let ink = luma(45)
    let path-stroke = 1.4pt + blue.darken(25%)
    let mark-fill = rgb("#f3d36b")
    let home-fill = rgb("#f6f1e6")

    line((24, 70), (70, 45), stroke: path-stroke)
    line((70, 45), (116, 58), stroke: path-stroke)
    line((116, 58), (164, 30), stroke: path-stroke)
    line((116, 58), (150, 92), stroke: 0.9pt + luma(150), dash: "dashed")
    line((70, 45), (52, 104), stroke: 0.9pt + luma(150), dash: "dashed")

    for p in ((48, 57), (70, 45), (93, 52), (116, 58), (140, 44)) {
      circle(p, radius: 3.4, fill: mark-fill, stroke: 0.55pt + rgb("#b68a12"))
    }

    let child(x, y, fill) = {
      circle((x, y + 13), radius: 5, fill: fill, stroke: 0.7pt + ink)
      line((x, y + 8), (x, y - 6), stroke: 0.85pt + ink)
      line((x, y + 3), (x - 8, y - 2), stroke: 0.85pt + ink)
      line((x, y + 3), (x + 8, y - 2), stroke: 0.85pt + ink)
      line((x, y - 6), (x - 6, y - 16), stroke: 0.85pt + ink)
      line((x, y - 6), (x + 6, y - 16), stroke: 0.85pt + ink)
    }

    child(20, 72, rgb("#dcecff"))
    child(34, 78, rgb("#ffe3df"))

    rect((154, 20), (184, 46), fill: home-fill, stroke: 0.8pt + ink)
    line((150, 46), (169, 62), stroke: 0.9pt + ink)
    line((188, 46), (169, 62), stroke: 0.9pt + ink)
    rect((166, 20), (174, 34), fill: rgb("#d9c2a1"), stroke: 0.55pt + ink)
    rect((157, 35), (165, 42), fill: rgb("#e5f4ff"), stroke: 0.45pt + ink)
    rect((176, 35), (184, 42), fill: rgb("#e5f4ff"), stroke: 0.45pt + ink)

    content((24, 18), text(size: 7.5pt, fill: ink)[départ])
    content((169, 12), text(size: 7.5pt, fill: ink)[maison])
    content((100, 76), text(size: 7.5pt, fill: blue.darken(35%))[suivre les distances])
  })
]

#let imp(cont) = {
  text(fill: blue.darken(50%), cont)
}

#let ita(cont) = {
  text(cont, size: 1em, style: "italic")
}

#let reset_cpt() = {
  cpt_def.update(0)
  cpt_prop.update(0)
  cpt_thm.update(0)
  cpt_exos.update(0)
}

#let document(
  title: none,
  doc,
) = {
  set page(
    paper: "a4",
    margin: (left: 2cm, right: 2cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(8pt)
        AVANT LA MP2I
        #h(1fr) crvr.fr
      ]
    },
    footer: context {
      if counter(page).get().first() > 1 [
        #set text(8pt)
        #h(1fr) #counter(page).display("1") #h(1fr)
      ]
    },
  )
  show strong: it => text(weight: "semibold", fill: blue.darken(50%), it.body)
  
  show heading.where(
    level: 1,
  ): it => [
    #pagebreak(weak: true)
    #cpt_part.step()
    #block(width: 100%)[
      #reset_cpt()
            #set align(center)
      #set text(1.2em, weight: "bold", font: "Playfair Display")
      #imp(counter(heading).display("1")) #smallcaps(it.body)
    ]
  ]

  show heading.where(
    level: 2,
  ): it => block(width: 100%)[
    #set align(left)
    #set text(1.1em, weight: "semibold", font: "Playfair Display")
    #imp(counter(heading).display("1.1")) #it.body
  ]

  show heading.where(
    level: 3,
  ): it => block(width: 100%)[
    #set align(left)
    #set text(1.05em, weight: "medium", font: "Playfair Display")
    #imp(counter(heading).display("1.1.1")) #it.body
  ]

  show heading.where(
    level: 4,
  ): it => block(width: 100%)[
    #set align(left)
    #set text(1.0em, weight: "regular", font: "Playfair Display")
    #imp(counter(heading).display("1.1.1.1")) #it.body
  ]

  set heading(numbering: "1.1")
  set text(font: "New Computer Modern", size: 1.01em)
  set par(justify: true, leading: 0.65em, spacing: 1.2em)

  doc
}

#let def(
  description,
  title: none,
) = {
  cpt_def.step()
  context block(
    breakable: true,
    width: 100%,
    fill: green.lighten(95%),
    radius: 4pt,
    stroke: 1pt + green.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: green.darken(20%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[Définition #cpt_part.display("1")-#cpt_def.display()])
    #if title != none [
      #h(0.5em)
      #text(fill: green.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: green.darken(20%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + green.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let exo_nd(
  description,
  title: none,
  etoile: 1,
  source: "Exercice",
) = {
  cpt_exos.step()
  tot_exos.step()
  context block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(95%),
    radius: 4pt,
    stroke: 1pt + blue.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: blue.darken(30%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[#source (#cpt_part.display("1")-#cpt_exos.display())])
    #if title != none [
      #h(0.5em)
      #text(fill: blue.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: blue.darken(30%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #h(1fr)
    #text(fill: blue.darken(30%), weight: "bold", size: 0.95em, font: "Playfair Display", [#etoile $star$])
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + blue.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let prop(
  description,
  title: none,
) = {
  cpt_prop.step()
  context block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(90%),
    radius: 4pt,
    stroke: 1pt + blue.darken(30%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: blue.darken(40%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[Proposition #cpt_part.display("1")-#cpt_prop.display()])
    #if title != none [
      #h(0.5em)
      #text(fill: blue.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: blue.darken(40%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + blue.darken(30%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let cb(cont, title: "titre") = {
  block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(95%),
    radius: 4pt,
    stroke: 1pt + blue.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: blue.darken(30%), weight: "bold", size: 0.95em, font: "Playfair Display", upper("Code"))
    #if title != none [
      #h(0.5em)
      #text(fill: blue.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: blue.darken(30%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + blue.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #cont
  ]
}

#let question(
  description,
  title: none,
  type: "code",
) = {
  cpt_qst.step()
  context block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(95%),
    radius: 4pt,
    stroke: 1pt + blue.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: blue.darken(30%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[Question #cpt_qst.display("1")])
    #h(1fr)
    #text(fill: blue.darken(30%), weight: "semibold", size: 0.95em, font: "Playfair Display", type)
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + blue.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let th(
  description,
  title: none,
) = {
  cpt_thm.step()
  context block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(90%),
    radius: 4pt,
    stroke: 1pt + blue.darken(30%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: blue.darken(40%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[Théorème #cpt_part.display("1")-#cpt_thm.display()])
    #if title != none [
      #h(0.5em)
      #text(fill: blue.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: blue.darken(40%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + blue.darken(30%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let pl(
  description,
  title: none,
) = {
  cpt_thm.step()
  context block(
    breakable: true,
    width: 100%,
    fill: red.lighten(90%),
    radius: 4pt,
    stroke: 1pt + red.darken(30%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: red.darken(40%), weight: "bold", size: 0.95em, font: "Playfair Display", upper("Aller plus loin"))
    #if title != none [
      #h(0.5em)
      #text(fill: red.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: red.darken(40%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + red.darken(30%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let dem(
  content,
) = {
  context block(
    breakable: true,
    width: 100%,
    fill: blue.lighten(98%),
    radius: 4pt,
    stroke: (left: 4pt + blue.darken(20%)),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: black, weight: "medium", size: 0.95em, font: "Playfair Display", upper("Démonstration"))
    #v(-0.4em)
    #set align(left)
    #content
  ]
}

#let exo(
  description,
  title: none,
) = {
  cpt_exos.step()
  tot_exos.step()
  context block(
    breakable: true,
    width: 100%,
    fill: green.lighten(95%),
    radius: 4pt,
    stroke: 1pt + green.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: green.darken(20%), weight: "bold", size: 0.95em, font: "Playfair Display", upper[Exercice (#cpt_part.display("1")-#cpt_exos.display())])
    #if title != none [
      #h(0.5em)
      #text(fill: green.lighten(20%), size: 0.95em, font: "Playfair Display")[|]
      #h(0.5em)
      #text(fill: green.darken(20%), weight: "semibold", size: 0.95em, font: "Playfair Display", title)
    ]
    #h(1fr)
    #text(fill: green.darken(20%), weight: "bold", size: 0.95em, font: "Playfair Display", [#etoile $star$])
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + green.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #description
  ]
}

#let rem(cont) = {
  block(
    breakable: true,
    width: 100%,
    fill: gray.lighten(90%),
    radius: 4pt,
    stroke: (left: 4pt + gray.darken(20%)),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: black, weight: "bold", size: 0.95em, font: "Playfair Display", upper("Remarque"))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #cont
  ]
}

#let attention(cont) = {
  block(
    breakable: true,
    width: 100%,
    fill: red.lighten(95%),
    radius: 4pt,
    stroke: (left: 4pt + red.darken(20%)),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: red.darken(40%), weight: "bold", size: 0.95em, font: "Playfair Display", upper("Attention !"))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #cont
  ]
}

#let corr(
  num: none,
  content
) = {
  block(
    breakable: true,
    width: 100%,
    fill: gray.lighten(95%),
    radius: 4pt,
    stroke: 1pt + gray.lighten(60%),
    inset: (top: 0.6em, bottom: 0.8em, x: 1em)
  )[
    #text(fill: gray.darken(30%), weight: "bold", size: 0.95em, font: "Playfair Display", upper("Correction " + num))
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + gray.lighten(60%))
    #v(-0.4em)
    #set align(left)
    #set text(fill: black, size: 1em)
    #content
  ]
}
