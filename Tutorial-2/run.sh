#!/usr/bin/bash

rm -r Outputs

mkdir Outputs
cd Outputs

items=("dna" "prot")
A=("pars" "ml")
B=("dist")
plots=("tree" "gram")

echo -n "enter phylip exe path: "
read exe_path


for item in "${items[@]}"; do
  mkdir "${item}"
  echo -n "enter ${item} input path: "
  read path
  cp "../${path}" "${item}/infile"
  cd "${item}"
  for a in "${A[@]}"; do
    echo "Y" | ./"../../${exe_path}/${item}${a}"
    
    mkdir "${a}"
    mv outfile "${a}"
    mv outtree "${a}/intree"

    cd "${a}"
    for plot in "${plots[@]}"; do
      (echo ./"../../../${exe_path}" && echo "Y") | ./"../../../${exe_path}/draw${plot}"
      mkdir "${plot}"
      mv plotfile "${plot}"
    done
    cd ..
  done

  for b in "${B[@]}"; do
    echo "Y" | ./"../../${exe_path}/${item}${b}"

    mkdir "${b}"
    mv outfile "${b}/infile"

    cd "${b}"
    echo "Y" | ./"../../../${exe_path}/neighbor"
    mv outtree intree
    for plot in "${plots[@]}"; do
      (echo ./"../../../${exe_path}" && echo "Y") | ./"../../../${exe_path}/draw${plot}"
      mkdir "${plot}"
      mv plotfile "${plot}"
    done
    cd ..
  done
  cd ..
done
