---
layout: guide
---

# Oppgave 3

## Samarbeide på et repository

Jobb sammen i grupper på 2-3 stykker.
Én på gruppa lager et repository på github.com, og legger til de andre som collaborators.

![](images/settings-button.png)

Gå inn på Settings på repositoriet.

![](images/add-collaborator.png)

Legg til de andre.

Nå kan alle clone repoet.

![](images/clone-url.png)

Nå kan alle gjøre en endring lokalt, og adde/commite denne.

Deretter, push commiten til GitHub.

Den første som pusher, får det til. De andre vil få beskjed om å pulle før man kan pushe.

Når man puller, kan det være man får merge conflicts. Disse må fikses før man kan fortsette.

Åpne fila som har en konflikt i en tekst-editor. Finn linjer med `<<<<<<<` og visk ut den koden som ikke skal være der.

![](images/merge-conflict.png)

Endre koden i fila til

```
Changes made by me.
```


