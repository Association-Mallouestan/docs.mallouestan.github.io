---
date: 2026-04-25 2:00:00
title: Bases en trigonométrie
description: Des outils mathématique utiles pour la conception
tags:
  - techniques
  - construction
folders:
  - charpente-4j-debutant-e
image: /images/technique/construction/cercle-trigo.svg
author: mallouestan
---

## Bases de trigonométrie

La trigonométrie est née d'une envie de déterminer plus facilement les longueurs et les angles dans les triangles rectangle. Plûtot que de noter les angles ainsi que les longueurs associées à ces angles, les mathématiciens ont décidé de noter et d'étudier seulement les triangles ayant un hypothénuse égale à 1. Effectivement, si on change la taille d'un triangle, les angles restent les mêmes, seul les longueurs changent. Les longueurs changeant de manière proportionnelle ainsi si on connait les longueurs d'un triangle, on peut en déduire les longueurs d'un triangle plus grand ou plus petit en multipliant ou divisant les longueurs par la différence de taille entre les deux triangles.  

![medium](/images/technique/construction/trigo-taille.svg)

Ainsi, les mathématiciens ont décidé de se simplifier la vie en ne s'intéressant qu'aux triangles ayant un hypothénuse égale à 1. Permetant de déduire les longueurs des cotés des autres triangles simplement en multipliant leurs valeurs par la taille du triangle en question. Pour un triangle iels notaient les longueurs des cotés de ce triangle par rapport à l'angle alpha. En étudiant tous les triangles possible avec un hypothénuse égale à 1, on obtient un cercle composé de tous les sommets possible pour ces triangles.



Pour simplifier les cas les mathématiciens et architectes ont étudier tous les triangles ayant un hypothénuse (le coté le plus long) égale à 1. Ainsi en traçant tout les triangle possible avec un hypothénuse égale à 1 on obtient un cercle composé de tous les sommets possible pour ces triangles. La trigonométrie est de regardé tout simplement un triangle au sein de ce cercle.

![medium](/images/technique/construction/cercle-trigo.svg)

Sur le cercle, dit trigonométrique, ci-dessus apparait le cosinus, le sinus et la tangeante pour un angle donné (sur le schema environ 60 degré). Pour tout angle une paire unique de valeurs de sin, de cos existe. Gràce à ces valeurs nous pouvons faire l'opération inverse et trouver l'angle. L'angle forme un triangle qui à de coté la valeur du sinus et celui du cosinus ainsi qu'un hypthénuse égale au rayon du cercle limité comme nous l'avons dit à 1. Grace au sinus et cosinus nous pouvons donc trouver les angles ou les longueurs des cotés d'un triangle sans connaitre les 2 cotés nécessaire à la résolution avec pythagore.

### Dans un triangle

Un moyen mémotechnique permet d'appliquer plus simplement a trigonométrie, c'est le fameux **SOHCAHTOA** qui permet de se rappeler que dans un triangle 

```
SOH -> sin(angle)=coté-opposé/hypothénuse
CAH -> sin(angle)=coté-adjacent/hypothénuse
TOA -> sin(angle)=coté-opposé/coté-adjacent
```

![triangle trigo](/images/technique/construction/triangle-trigo.svg)

### Fonctions et fonctions inverses

Les fonctions mathématiques permetent d'obtenir ces différentes distances: sin(angle), cos(angle), tan(angle).

Des fonctions permettent de faire l'opération inverse et ainsi de fournir l'angle à partir de la longueur: sin<sup>-1</sup>(longueur), cos<sup>-1</sup>(distance),tan<sup>-1</sup>(distance).

> Ces fonctons inverses sont parfois noter asin, acos, atan ou arcsin, arccos,arctan.

### Cas d'usage

Prennons quelques exemples:

![small](/images/technique/construction/pythagore-exemple.svg)

Cherchons l'angle du toit de l'abbris çi dessus soit BĈA sur le schéma ci-dessus.

```
Calculons l'hypothénuse (AC) avec Pythagore
AC² = AB²+BC² = 3²+4² = 25
AC = √25 = 5

Au tour de la trigo
sin(BĈA)=coté-opposé/hypothénuse=AB/AC
sin(BĈA)=3/5
BĈA=asin(3/5)
BĈA=36.87 degrés
```

Maintenant remplaçons le toit pour le remplacer par un toit en chaume nécessitant un angle plus grand, disons 60 degrés. Nous nous interressons donc a l'incidence sur la longueur AB


Si BĈA est égale 60 degrés et nous savons que 

```
tan(BĈA)=AB/BC
```

Nous nous intéressons à AB nous pouvons multiplier des deux coté par AC et obtenons:

```
tan(BĈA)xBC=AB
```

soit 

```
AB = tan(BĈA)xBC
AB = 4 x tan(60 degrés)
AB = 4 x 1,732
AB = 6,928
```

Avec un angle de 60 degrés la hauteur de l'abbris augmente de 3,928m car:

```
6,928(nouvelle hauteur) - 3(ancienne hauteur) = 3,928m
```










