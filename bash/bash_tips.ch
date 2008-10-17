= Bash_Tips:
== List history:
    history 1000 | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
