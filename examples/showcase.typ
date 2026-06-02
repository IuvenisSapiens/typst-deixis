#set page(width: 400pt, height: 360pt, margin: (x: 1in))

#import "../src/lib.typ": *

#show: deixis-setup-notes

#set par(justify: true)

#align(center, [= Deixis])

#link("https://typst.app/universe/package/deixis", `deixis`) decouples a note into a mark
#deixis-inline-mark(id: <note1>)
and a body#deixis-footnote(id: <note1>)[
  A decoupled *footnote* linked to a standalone mark.
],
linked together via a given ```typst <id>```.

With the *inline mark*, you can optionally
#deixis-margin-note(
  stroke: red,
  fill: red.transparentize(95%),
  link: "right-angle",
  container-func: rect,
)[
  wraps a text content
][
  *Margin notes* occupy the margins of the page.
].
For highlighting images, code, or equations, it is recommended to use the *region mark* instead.

Navier-Stokes Equation explained with *inset notes*:

$ #deixis-pin("mass-l")rho#deixis-pin("mass-r")#deixis-pin("acc-l")#$( frac(partial V, partial t) + V dot nabla V )$#deixis-pin("acc-r") = #deixis-pin("force-l")nabla P + rho g + mu nabla^2 V#deixis-pin("force-r") $

#deixis-inset-note(
  pins: ("mass-l", "mass-r"),
  stroke: blue,
  fill: blue.transparentize(95%),
  layer: (mark: "background", body: "foreground"),
  link: "curve",
  link-marks: "body",
  dx: -2em,
  dy: 3em,
  anchor: (mark: center + horizon, body: top + center),
  width: 1in
)[
  #set text(size: 0.85em)
  *Mass:* density of the fluid.
]
#deixis-inset-note(
  pins: ("acc-l", "acc-r"),
  padding: (x: -0.3em, y: 1em),
  stroke: purple,
  fill: purple.transparentize(95%),
  layer: (mark: "background", body: "foreground"),
  link: "curve",
  link-marks: "body",
  link-ports: (mark: bottom, body: top),
  dx: 4em,
  dy: 3em,
  anchor: (mark: center + horizon, body: top + center),
  width: 1.4in,
)[
  #set text(size: 0.85em)
  *Acceleration:* how velocity experienced by a particle changes with time.
]
#deixis-inset-note(
  pins: ("force-l", "force-r"),
  padding: (x: 0em, y: 1em),
  stroke: orange,
  fill: orange.transparentize(95%),
  layer: (mark: "background", body: "foreground"),
  link: "curve",
  link-marks: "body",
  link-ports: (mark: right, body: top),
  dx: 5.5em,
  dy: 3em,
  anchor: (mark: center + horizon, body: top + center),
  width: 1.2in,
)[
  #set text(size: 0.85em)
  *Force:* All the forces that are acting on the fluid.
]

#v(5em)
Endnote bodies are invisible until explicitly printed
#deixis-endnote(
  numbering: "i",
)[
  *Endnotes* also have a special default counter _series_.
]:

#deixis-print-endnotes()
#pagebreak()

#deixis-note-outline(
  heading-level: 2,
  fill: repeat[.]
)
