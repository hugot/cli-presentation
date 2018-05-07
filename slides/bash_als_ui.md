class: center middle

# BASH als UI

TAB-Completion

Globbing: `./mapje/*`

brace-expansion: `{1..10}`

???

BASH heeft veel features die het makkelijker maken om de shell interactief te gebruiken.

Voorbeelden daarvan zijn:

Completion

```
grep --<TAB>

sudo apt-get install mariad<TAB>
```

Globbing

```
cp ./assets/images/* ~/backups

cd "$(mktemp -d)"

touch file{1..10}.ext

rm !(file3.ext|5)
```

