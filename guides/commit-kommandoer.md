---
layout: guide
---

# Git-kommandoer for commiting

Commiting er det man gjør aller mest i git.
Man bruker for det meste kommandoene add, commit, status og log når man skal legge til og oppdatere filer.

Commiting i git består av to steg. Først _staging_, deretter commiting.

## Legge til en ny fil

Når du har lagd en ny fil, må du fortelle git om den før den kan commites.

```
git add FILENAME
```

## Oppdatere filer

For å fortelle git at du vil lagre endringene i en fil, gjør du det samme som for nye filer.

```
git add FILENAME
```

Da blir endringene siden forrige gang du commitet filen _staget_.

## Commite stagede filer

Du kan skrive `git status` for å se hvilke filer som er staget.

![git add og git status](images/git-staging.png)

Før vi hadde skrevet `git add README` var den listet som untracked, mens etterpå står filen under _Changes to be commited_.

Nå kan man skrive `git commit -m "Add README"` for å commite endringen.

-m indikerer at vi vil gi commiten en melding. Hva som skal stå i meldingen er valgfritt, men det finnes noen normer for gode commit-meldinger.
