class: middle

# Aliases, functies en .bashrc

`$HOME/.bashrc`  
`$HOME/.bash_aliases`

`alias cowhead='cowsay -f head_in'`

```
debugserver() {
    sleep 1 && $BROWSER localhost:8888/app_dev.php & 
    XDEBUG_CONFIG='idekey=pugdebug' php -S localhost:8888 -t public
}
```

???

De bashrc is een soort configuration file.

Commando's die in de bashrc staan worden bij het openen van een shell uitgevoerd.

Dit kan dus leuk zijn voor een welkomst-berichtje.

Is ook leuk voor functies en aliasen.

Functies en aliasen zijn handig voor dingen die je vaak doet

Voorbeeld: `alias cowhead='cowsay -f head-in'`
