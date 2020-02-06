grep -v '#' /etc/passwd | sed -n "p;n" | cut -d ':' -f1 | rev | sort -r | awk -v a="$FT_LINE1" -v b="$FT_LINE2" '(NR>=a && NR <=b)' | tr '\n', ',' | sed 's/, *$/\./'
