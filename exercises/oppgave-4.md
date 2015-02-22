---
layout: guide
---

# Oppgave 4

## Branching

Ha et repo og ha en lokal kopi av det. ```git clone```

![](images/task4-step1.png)

Lag en branch ```git checkout -b other-branch```. "other-branch" er navnet på branchen.

Lag en commit i branchen. ```git commit```

![](images/task4-step2.png)

Checkout master og lag en ny commit der. (`git checkout master`)

![](images/task4-step3.png)

Sjekk loggen på master ```git log```

Nå skal du få endringene fra other-branch inn i master-branchen. ```git merge other-branch```.
I dette steget kan det hende at det er konflikter som git ikke kan løse automatisk. I så fall må du gjøre dette manuelt.

Sjekk loggen din nå ```git log```

Commiten fra other-branch ligger nå i master

![](images/task4-step4.png)
