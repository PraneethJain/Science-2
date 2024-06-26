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

#grid(
  columns: 2, gutter: 2mm, figure(
    image("./Outputs/Q2_Alignments/Needle/DNA/SARSCOV_SARSCOV2.png"), caption: "Needle SARSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q2_Alignments/Water/DNA/SARSCOV_SARSCOV2.png"), caption: "Water SARSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q2_Alignments/Needle/DNA/MERSCOV_SARSCOV2.png"), caption: "Needle MERSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q2_Alignments/Water/DNA/MERSCOV_SARSCOV2.png"), caption: "Water MERSCoV-SARSCoV2 DNA",
  ), figure(
    image("./Outputs/Q2_Alignments/Needle/Protein/SARSCOV_SARSCOV2.png"), caption: "Needle SARSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q2_Alignments/Water/Protein/SARSCOV_SARSCOV2.png"), caption: "Water SARSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q2_Alignments/Needle/Protein/MERSCOV_SARSCOV2.png"), caption: "Needle MERSCoV-SARSCoV2 Protein",
  ), figure(
    image("./Outputs/Q2_Alignments/Water/Protein/MERSCOV_SARSCOV2.png"), caption: "Water MERSCoV-SARSCoV2 Protein",
  ),
)

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
- Length: 1255
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
- Percentage Similarity: NA
- Length: 1242
- E-Value: 0

= Question 4
== Protein Database
#link("https://www.uniprot.org/uniprotkb/statistics")[Source]
#let a = 571282
#let b = 248234451
- #a reviewed proteins and #b unreviewed proteins are present in UniProt.
- Thus, the total size is #{ a + b } proteins in UniProt
- 87,574,368,369 amino acids

== Nucleotide Database
#link("https://www.ncbi.nlm.nih.gov/genbank/release/current/")[Source]
- 249060436 sequences, 2570711588044 bases

== (i)
For search in protein database, we multiply the number of amino acids in the
database with the number of amino acids in the query sequence.
$ 87574368369 * 1000/3 = 29191456123000 $

For search in nucleotide database, we multiply the number of nucleotides in the
database with the number of nucleotides in the query sequence.
$ 249060436 * 1000 = 249060436000 $

Assuming $10^7$ cells are computed per second, the time required is $33.78$ days
and $6.91$ hours respectively.

== (ii)
For Human Chr 1 and a query sequence of 1000 bases, the number of matrix cells
required is
$ 2.49 * 10^8 * 10^3 = 2.49 * 10^11 $

For Human Chr 1 and Mouse Chr 1, the number of matrix cells required is
$ 2.49 * 10^8 * 1.95 * 10^8 = 4.8555 * 10^16 $

Therefore, assuming the memory required for each cell is 1 unit, the memory
required for these matrices respectively is $2.49 * 10^11$ units and $4.8555 * 10^16$ units.

= Question 5

```python
import requests


def find_protein_by_taxonomy_id(taxonomy_id: int) -> None:
    url1 = f"https://rest.uniprot.org/uniprotkb/search?query=%28protein_name%3AInsulin%29+AND+%28taxonomy_id%3A{taxonomy_id}%29"

    resp1 = requests.get(url1)
    results = resp1.json()

    print(f"Total number of protein entries: {resp1.headers.get('X-Total-Results')}")

    accession_ids = [entry["primaryAccession"] for entry in results["results"]]
    print("Accession IDs:", accession_ids)

    first_id = accession_ids[0]
    url2 = f"https://www.uniprot.org/uniprot/{first_id}.fasta"
    resp2 = requests.get(url2)
    with open(f"{first_id}.fasta", "wb") as fasta_file:
        fasta_file.write(resp2.content)
    print("Fasta downloaded!")


if __name__ == "__main__":
    find_protein_by_taxonomy_id(9606)
```
