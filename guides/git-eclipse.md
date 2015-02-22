---
layout: guide
---

# Sette opp git for eclipse

Det er i all hovedsak to triks som må til for å få git til å fungere smertefritt i java-prosjekter når man bruker eclipse. Det ene er å bruke riktig .gitignore-fil, og det andre er å huske å oppdatere eclipse når man har pullet oppdateringer.

## Oppsett på github

Lag et nytt repository på github.

![Inite et repo](images/init-repo.png)

Kryss av for å initialize med en README-fil, og velg .gitignore-fil for Java.

### Laste ned og sette opp koden

![clone-url](images/clone-url.png)

Kopier clone URL-en.

Åpne terminalen/Git Bash og naviger til en mappe hvor du vil lagre repositoryet.
Vær obs på at det lages en egen mappe for repositoryet når du cloner.

```
git clone git@github.com:USERNAME/REPO.git
```
