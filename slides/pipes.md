class: center middle

# Pipes

Pipe teken: `|`

Output van het ene programma als input voor het andere

???

Pipes

```
fortune | cowsay

for i in {1..100}; do echo "This is number $i"; done | grep '1' | less

for i in {1..100}; do echo "This is number $i"; done | sed 's/number/dog/g' | less

```
