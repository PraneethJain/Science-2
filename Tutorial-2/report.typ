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
_DNA Identity Matrix_
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 5pt, align: center, [], [*Bat CoV*], [*Bat CoV RATG13*], [*MERS CoV*], [*P-CoV*], [*SARS-CoV2*], [*SARS-CoV*], [*Bat CoV*], [-], [25.51], [23.29], [41.77], [24.56], [25.45], [*Bat CoV RATG13*], [25.51], [-], [30.44], [75.94], [92.68], [67.57], [*MERSCoV*], [23.39], [30.44], [-], [48.10], [29.46], [30.84], [*P-CoV*], [41.77], [75.94], [48.10], [-], [82.28], [62.02], [*SARS-CoV2*], [24.56], [92.68], [29.46], [82.28], [-], [65.37], [*SARS-CoV*], [25.45], [67.57], [30.84], [62.02], [65.37], [-],
)

The closest relatives are:
- SARS-CoV2 with RATG13 (92.68%)
- SARS-CoV2 with P-CoV (82.28%)

_Protein Identity Matrix_
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 5pt, align: center, [ ], [*Bat CoV*], [*Bat CoV RATG13*], [*MERS CoV*], [*P-CoV*], [*SARS-CoV*], [*SARS-CoV2*], [*Bat CoV*], [-], [18.44], [18.55], [30.77], [18.56], [18.22], [*Bat CoV RATG13*], [18.44], [-], [23.40], [84.61], [74.58], [97.47], [*MERSCoV*], [18.55], [23.40], [-], [23.08], [26.06], [26.47], [*P-CoV*], [30.77], [84.61], [23.08], [-], [73.08], [84.62], [*SARS-CoV*], [18.56], [74.58], [26.06], [73.08], [-], [73.94], [*SARS-CoV2*], [18.22], [97.47], [26.47], [84.62], [73.94], [-],
)

The closest relatives are:
- SARS-CoV2 with RATG13 (97.47%)
- SARS-CoV2 with P-CoV (84.62%)
==
The possible source of origin could be deduced with the sequence having the
highest level of percentage identity. Thus, we the possible source of origin of
SARS-CoV2 and MERSCoV is RATG13.

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

