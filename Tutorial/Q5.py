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
