for file in uni_seq_C.elegans uni_seq_E.coli uni_seq_D.melanogaster
# awk '/^>/ { print (NR==1 ? "" : RS) $0; next } { printf "%s", $0 } END { printf RS }' uni_seq_C.elegans.txt > temp.txt
do
    awk '/^>/ { print (NR==1 ? "" : RS) $0; next } { printf "%s", $0 } END { printf RS }' $file.txt > temp.txt
    sed -i -E 's/^>sp\|/>/g' temp.txt
    sed -i -E 's/\|.+//g' temp.txt
    awk 'BEGIN{RS=">"}{print $1"\t"$2}' temp.txt > temp1.txt
    tail -n +2 temp1.txt > $file.final.tsv
done