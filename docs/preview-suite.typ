#set page(width: 300pt, height: auto, margin: 0pt)

#import "../src/lib.typ": *
#show: deixis-setup-notes

#import "demo.typ": show-demo
#show: show-demo

```preview
//| sandbox-mode: "inline", height: 200pt, margin: (x: 2cm, rest: 1em)

#lorem(10)
#deixis-margin-note[Note 1.]
#lorem(10)
#deixis-margin-note[This is a marked text][Note 2. #lorem(6)].
#lorem(10)
#deixis-set(
  stroke: green,
  fill: green.transparentize(95%),
  container-func: (margin-note: rect)
)
#deixis-margin-note(
  link: "right-angle",
)[This is a marked text][Note 3.].
#lorem(20)
```
