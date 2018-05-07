class: center middle

# BASH als UI

TAB-Completion

Job control

Globbing: `./mapje/*`

brace-expansion: `{1..10}`

Pipes: `|`

???

BASH heeft veel features die het makkelijker maken om de shell interactief te gebruiken.

Voorbeelden daarvan zijn:

Completion

```
grep --<TAB>

sudo apt-get install mariad<TAB>
```

Job Control

```
htop

vim

while true; echo "Hello World!"; sleep 1; done

fg

jobs

```

Globbing

```
cp ./assets/images/* ~/backups

cd "$(mktemp -d)"

touch file{1,5}.ext

rm !(file3.ext|5)
```

Pipes

```
fortune | cowsay

for i in {1..100}; do echo "This is number $i"; done | grep '1' | less

for i in {1..100}; do echo "This is number $i"; done | sed 's/number/dog/g' | less

```
