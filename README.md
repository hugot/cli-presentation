# Presentatie over shells en CLI's
Deze repository bevat de slides voor een presentatie die ik op maandag 7 mei 2018 heb gegeven
over shells en CLI's. Naast een globale uitleg van CLI's en van wat een shell nu precies is,
wordt ook dieper ingegaan op de BASH shell en haar features.

## De presentatie bekijken
Ik heb github pages aangezet voor deze repository, dus de presentatie zou publiek beschikbaar moeten zijn
via deze URL: [https://hugot.github.io/cli-presentation/](https://hugot.github.io/cli-presentation/).  
Tip: druk op "p" om de notities bij de slides te zien.

## De presentatie aanpassen of genereren voor eigen gebruik
Ik heb bij het maken van deze presentatie een bash-scriptje geschreven om het HTML bestand te genereren
dat de inhoud bevat. het scriptje heet `remarker.bash` en bevind zich in de root van van het project.
Om de het HTML bestand opnieuw te genereren nadat je de markdown bestanden hebt aangepast kun je het
commando `./remarker.bash build` uitvoeren. Om met de bestanden te werken kun je de repository natuurlijk
gewoon clonen.  

Meer info over remark, het javascript/css tooltje waarmee ik deze slides in elkaar heb gezet, zie de
[github repo](https://github.com/gnab/remark)


## BASH op windows
Tijdens mijn presentatie gaf ik aan dat het mogelijk is om BASH te gebruiken op windows via het
Windows Subsystem for Linux (WSL). Hoe je dit kunt doen vind je
[hier](https://www.linux.com/blog/learn/2018/2/how-get-started-using-wsl-windows-10).


## Verdere leerstof
Sommigen van jullie vroegen na afloop van de presentatie waar je meer informatie kunt vinden
over de BASH shell. Hieronder vind je een lijst met plekken waar je meer info kunt vinden.

- [guide.bash.academy](https://guide.bash.academy/), deze guide is nog niet af maar de eerste paar hoofdstukken zijn een goede introductie.
- [De BASH hackers wiki](http://wiki.bash-hackers.org/start)
- [BashGuide](http://mywiki.wooledge.org/BashGuide)
- [Unix mages](http://unixmages.com/), gratis ebook met veel informatie over "The Unix way" die van pas zal komen bij het schrijven van shell scripts.


Voor meer resources, zie deze pagina van de bash-hackers-wiki:
[http://wiki.bash-hackers.org/scripting/tutoriallist](http://wiki.bash-hackers.org/scripting/tutoriallist)
