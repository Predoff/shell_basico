#! /bin/bash

# Loop pelos arquivos do diretório atual

echo "Listing files..."

for filename in *
do
  echo $filename
done

# Exemplo do uso de FOR

echo "Simple looping..."

for i in 1 2 3
do
  echo "$i"
done

echo "Loop like C..."

max=3

for ((i=1; i <= max; i++))
do
  echo "$i"
done
