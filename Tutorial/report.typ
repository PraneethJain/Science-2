#set text(font: "Roboto")
#show link: set text(rgb(0, 0, 255))

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
== (a) SARS-CoV vs SARS-CoV2
=== (i)
==== Needle:
#table(
  columns: (1fr, 1fr, 1fr), inset: 10pt, align: horizon, [], [*Identity*], [*Similarity*], [*DNA*], [72.8%], [72.8%], [*Protein*], [76.4%], [87%],
)
==== Water:
#table(
  columns: (1fr, 1fr, 1fr), inset: 10pt, align: horizon, [], [*Identity*], [*Similarity*], [*DNA*], [73.3%], [73.3%], [*Protein*], [76.4%], [87%],
)

The identity and similarity percentages of DNA are the same because the
nucleotides either match, or they don't. Due to this, identity and similarity
mean the same in this case.

BLOSUM62 assigns positive scores to conservative substitutions. Therefore the
score for similarity is higher than the score for identity in case of proteins.
It includes both substituions and exact matches.

=== (ii)

Identity refers to the exact matches between subsequences at a particular
position, while similarity refers considers for exact matches as well as
substitutions. Similarity accounts for conservative substitutions, i.e,
substitutions that don't significantly alter the functioning and structure of
the protein, while identity does not account for it.

=== (iii)

Global alignment attempts to align the entire length of the sequence without any
gaps at the ends, but local alignment attempts to identify subsequences of high
similarity while allowing gaps at the ends.

In context of SARS-CoV and SARS-CoV2, for the case of DNA sequence, the global
and local alignments are slightly different. In case of protein sequence, the
global and local alignments are the same.

=== (iv)
==== Parameters:
- Matrix: BLOSUM62
- Gap Open: 10
- Gap Extend: 0.5
= TO DO HOW TO SUBMIT ALIGNMENT

== (b) MERS-COV vs SARS-CoV2
==== Needle:
#table(
  columns: (1fr, 1fr, 1fr), inset: 10pt, align: horizon, [], [*Identity*], [*Similarity*], [*DNA*], [48.2%], [48.2%], [*Protein*], [30%], [45.6%],
)
==== Water:
#table(
  columns: (1fr, 1fr, 1fr), inset: 10pt, align: horizon, [], [*Identity*], [*Similarity*], [*DNA*], [48.4%], [48.4%], [*Protein*], [30.6%], [46.4%],
)
=== (i)
No, the two proteins are not homologs. This is because MERS-COV and SARS-CoV2
have a relatively low percentage of identity and similarity, as compared to that
between SARS-CoV and SARS-CoV2, which are homologs.

=== (ii)
As discussed in question 1 part (ii), protein sequences present a better measure
of similarity rather than DNA sequences, although ideally both the sequences
should be considered. Thus, majorly on the basis of protein sequences, I have
made the inference that MERS-COV and SARS-CoV2 are not homologs.

= Question 3
#link(
  "https://www.uniprot.org/blast/uniprotkb/ncbiblast-R20240405-161928-0335-66713856-p1m/overview",
)[DNA Results] and #link(
  "https://www.uniprot.org/blast/uniprotkb/ncbiblast-R20240405-150554-0996-53724043-p1m/overview",
)[Protein Results]

== (i)
The closest homolog of the query sequence is _Severe acute respiratory syndrome coronavirus 2 (2019-nCoV) (SARS-CoV)_

== (ii)
- Score: 5204
- Percentage Identity: 76%
- Percentage Similarity: 87%
- E-Value: 0

== (iii)
Yes, SARS-CoV is one of the hits, and the percentage identity and percentage
similarity results do match with the alignments obtained using `water`.

The significance of this is that both Smith-Waterman and BLAST utilize local
alignment algorithms, hence outputting almost the same values for similarities.

== (iv)
_Bat coronavirus HKU3 (BtCoV) (SARS-like coronavirus HKU3)_ Spike glycoprotein
is also a homolog.
- Score: 5081
- Percentage Identity: 76%
- Percentage Similarity: -
- E-Value: 0

= Question 4
== Protein Database
#let a = 571282
#let b = 248234451
- #a reviewed proteins and #b unreviewed proteins are present in UniProt.
- Thus, the total size is #{ a + b } proteins in UniProt

== Nucleotide Database

= Question 5
