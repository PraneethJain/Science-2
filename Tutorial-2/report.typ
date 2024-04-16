#set text(font: "Roboto")
#show link: set text(rgb(0, 0, 255))
#set heading(numbering: "1.a")

#set page(
  header: [Moida Praneeth Jain #h(1fr) 2022101093 #line(start: (-10%, 0%), end: (110%, 0%))], footer: [#line(start: (-10%, 0%), end: (110%, 0%))
    Science 2
    #h(1fr)
    #counter(page).display("1 of 1", both: true)
    #h(1fr)
    Tutorial 2 ], margin: (x: 1.5cm),
)

#set par(leading: 3.5mm)
#set par(leading: 0.65em)

=
==
==

=
#grid(
  columns: 2, gutter: 2mm, figure(
    image("./Outputs/no_bootstrap/dna/pars/tree/plot.png", width: 60%), caption: "No boostrap DNA pars tree",
  ), figure(
    image("./Outputs/no_bootstrap/dna/pars/gram/plot.png", width: 60%), caption: "No boostrap DNA pars gram",
  ), figure(
    image("./Outputs/no_bootstrap/dna/ml/tree/plot.png", width: 60%), caption: "No boostrap DNA ml tree",
  ), figure(
    image("./Outputs/no_bootstrap/dna/ml/gram/plot.png", width: 60%), caption: "No boostrap DNA ml gram",
  ), figure(
    image("./Outputs/no_bootstrap/dna/dist/tree/plot.png", width: 60%), caption: "No bootstrap DNA dist tree",
  ), figure(
    image("./Outputs/no_bootstrap/dna/dist/gram/plot.png", width: 60%), caption: "No bootstrap DNA dist gram",
  ), figure(
    image("./Outputs/bootstrap/dna/pars/tree/plot.png", width: 60%), caption: "boostrap DNA pars tree",
  ), figure(
    image("./Outputs/bootstrap/dna/pars/gram/plot.png", width: 60%), caption: "boostrap DNA pars gram",
  ), figure(
    image("./Outputs/bootstrap/dna/ml/tree/plot.png", width: 60%), caption: "boostrap DNA ml tree",
  ), figure(
    image("./Outputs/bootstrap/dna/ml/gram/plot.png", width: 60%), caption: "boostrap DNA ml gram",
  ), figure(
    image("./Outputs/bootstrap/dna/dist/tree/plot.png", width: 60%), caption: "bootstrap DNA dist tree",
  ), figure(
    image("./Outputs/bootstrap/dna/dist/gram/plot.png", width: 60%), caption: "bootstrap DNA dist gram",
  ), figure(
    image("./Outputs/no_bootstrap/prot/pars/tree/plot.png", width: 60%), caption: "No boostrap prot pars tree",
  ), figure(
    image("./Outputs/no_bootstrap/prot/pars/gram/plot.png", width: 60%), caption: "No boostrap prot pars gram",
  ), figure(
    image("./Outputs/no_bootstrap/prot/ml/tree/plot.png", width: 60%), caption: "No boostrap prot ml tree",
  ), figure(
    image("./Outputs/no_bootstrap/prot/ml/gram/plot.png", width: 60%), caption: "No boostrap prot ml gram",
  ), figure(
    image("./Outputs/no_bootstrap/prot/dist/tree/plot.png", width: 60%), caption: "No bootstrap prot dist tree",
  ), figure(
    image("./Outputs/no_bootstrap/prot/dist/gram/plot.png", width: 60%), caption: "No bootstrap prot dist gram",
  ), figure(
    image("./Outputs/bootstrap/prot/pars/tree/plot.png", width: 60%), caption: "boostrap prot pars tree",
  ), figure(
    image("./Outputs/bootstrap/prot/pars/gram/plot.png", width: 60%), caption: "boostrap prot pars gram",
  ), figure(
    image("./Outputs/bootstrap/prot/ml/tree/plot.png", width: 60%), caption: "boostrap prot ml tree",
  ), figure(
    image("./Outputs/bootstrap/prot/ml/gram/plot.png", width: 60%), caption: "boostrap prot ml gram",
  ), figure(
    image("./Outputs/bootstrap/prot/dist/tree/plot.png", width: 60%), caption: "bootstrap prot dist tree",
  ), figure(
    image("./Outputs/bootstrap/prot/dist/gram/plot.png", width: 60%), caption: "bootstrap prot dist gram",
  ),
)
==
==

