---
layout: guide
---

# Git style

Når man skal jobbe med git er det lurt å slå på noen fine ekstrafunksjoner som gjør livet litt lettere.
Denne guiden viser deg hvordan du kan sette opp to slike ekstrafunksjoner: farger i git-outputen i terminalen, og git-aware prompt.

## Farger i git

For å sette opp farger kjører man følgende i terminalen:
```
git config --global color.ui auto
```
og vips så er git en <span style="background:#faf;text-shadow:1px 1px 1px;letter-spacing:4px;"><span style="color:red">f</span><span style="color:chartreuse;">a</span><span style="color:brown;">r</span><span style="color:orange;">g</span><span style="color:red">e</span><span style="color:brown">s</span><span style="color:orange">p</span><span style="color:blue;">r</span><span style="color:chartreuse">a</span><span style="color:#26c">k</span><span style="color:brown">e</span><span style="color:green;">n</span><span style="color:orange">d</span><span style="color:chartreuse">e</span> <span style="color:#26c;">f</span><span style="color:green">e</span><span style="color:#f32">s</span><span style="color:red">t</span><span style="color:#f32;">i</span><span style="color:pink">v</span><span style="color:blue">a</span><span style="color:brown">l</span></span>.

Før:
![Før](http://i.imgur.com/ztZDgfW.png)

Etter:
![Etter](http://i.imgur.com/du6wYaX.png)

## Git-aware prompt

Med dette får du automatisk se hvilken branch du er på mens du jobber. Digg.

![Git-aware-prompt](https://raw.github.com/jimeh/git-aware-prompt/master/preview.png)

For å installere git-aware prompt går man til [https://github.com/jimeh/git-aware-prompt](https://github.com/jimeh/git-aware-prompt) og følger instruksene i READMEn.

## Git completion

Med dette går du muligheten til å klikke på ```tab``` for å autofullføre navnet på branchen du ønsker å jobbe med. Utrolig nyttig når man har lengre branch-navn.

For å installere dette skriver du i bash ```curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash``` og legger til disse linjene nederst i ```.bash_profile```:

```bash
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
```

Les mer her: [Autocomplete git](http://code-worrier.com/blog/autocomplete-git/)
