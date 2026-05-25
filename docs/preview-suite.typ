#set page(width: 400pt, height: auto, margin: 0pt)

#import "../src/lib.typ": *
#show: deixis-setup-notes

#import "demo.typ": show-demo
#show: show-demo

```preview
//| sandbox-mode: "inline", height: 300pt, margin: (x: 2cm, rest: 1em)

#lorem(10)
#deixis-endnote[Note 1.]
#lorem(10)
#deixis-endnote[This is a marked text][Note 2.].
#lorem(10)

// print endnote bodies
#deixis-print-endnotes()
```
