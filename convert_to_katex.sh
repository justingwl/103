#!/bin/bash

# Convert all instances of $ to {{< katex >}} and  {{< /katex >}} appropriately
# NOTE:
# Does not account for $'s on separate lines
# Does not account for text like $100, texts with $

if [ $# -eq 0 ] 
then
    echo "Usage"
    exit 1
fi

backup_file=$1`date "+%Y-%m-%d-%H-%M-%S"`
cp $1 $backup_file
mkdir -p ./backup/ && mv $backup_file ./backup/

input="$1"
count=0

while FILE= read -r -n1 char
do
    if [ "$char" = "$" ] 
    then
        count=$((count+1))
    fi
done < "$input"

if (( $count % 2 ))
    then
        echo "Odd number of $'s, unable to parse. Exiting..."
        exit 1
    else
        echo "Proceeding to convert..."
fi

# Kinda annoying
# awk '{ORS=NR%2==0?"{{< /katex >}}":RS}1' RS="$" test.md | tee $1 # The output appends an extra dollar sign

# sed  -i -E 's/a([^a]*)a/a\1b/g'
# sed  -i -E 's/$([^$]*)$/$\1b/g'
# sed -i -E 's/\$([^\$]*)\$/\$\1{{< \/katex >}}/g' test.md
# sed -E 's/\$([^\$]*)\$/\$\1b/g' $1

sed -i "" -E 's/\$([^$]*)\$/\$\1{{< \/katex >}}/g' $1
sed -i "" -e 's/\$/{{< katex >}}/g' $1