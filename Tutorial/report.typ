#set text(font: "Roboto")
// #set heading(numbering: "1.")

#set page(
  header: [Moida Praneeth Jain #h(1fr) 2022101093 #line(start: (-10%, 0%), end: (110%, 0%))], footer: [#line(start: (-10%, 0%), end: (110%, 0%))
    Science 2
    #h(1fr)
    #counter(page).display("1 of 1", both: true)
    #h(1fr)
    Tutorial 1 ], margin: (x: 1.5cm),
)

#set par(leading: 3.5mm)
#set par(leading: 0.65em)

= Question 1
== (i)
SARS-CoV2 is similar to SARS-CoV1 rather than MERS-COV. This can be observed
from the plots below.

== (ii)
It is easier to identify the similarity using protein sequences rather than DNA
sequences. DNA only consists of 4 components, so the chance of accidentally
being similar is much higher. On the other hand, there are 20 amino acids. Thus,
only similar proteins will have similar protein sequences.

== (iii)

=== Dottup Parameters
- Word Size (k-tuple) = 10

=== Dotmatcher Parameters
- Window Size = 15
- Threshold Value = 50

=== Plots
#grid(
  columns: 2, gutter: 2mm, figure(
    image("./Outputs/Q1_Plots/Dottup/DNA/SARSCOV_SARSCOV2.png"), caption: "Dottup SARSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q1_Plots/Dotmatcher/DNA/SARSCOV_SARSCOV2.png"), caption: "Dotmatcher SARSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q1_Plots/Dottup/DNA/MERSCOV_SARSCOV2.png"), caption: "Dottup MERSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q1_Plots/Dotmatcher/DNA/MERSCOV_SARSCOV2.png"), caption: "Dotmatcher MERSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q1_Plots/Dottup/Protein/SARSCOV_SARSCOV2.png"), caption: "Dottup SARSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q1_Plots/Dotmatcher/Protein/SARSCOV_SARSCOV2.png"), caption: "Dotmatcher SARSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q1_Plots/Dottup/Protein/MERSCOV_SARSCOV2.png"), caption: "Dottup MERSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q1_Plots/Dotmatcher/Protein/MERSCOV_SARSCOV2.png"), caption: "Dotmatcher MERSCoV-SARSCoV2 Protein",
  ),
)

= Question 2

= Question 3

= Question 4

= Question 5
