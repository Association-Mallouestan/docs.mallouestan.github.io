---
date: 2026-04-22 2:00:00
title: Répartition de semis (Mathématique)   
description: Comment répartir les semis avec une fonction de densité
tags:
  - maraichage
  - maths
folders:
  - charpente-4j-debutant-e
image: /images/technique/maths/fonctions-densite.svg
author: mallouestan
---

### Le problème

Nous souhaitons planifier des semis pour l'année à venir notament sur les différentes période de semis en fonction des especes. Par exemple, les courgette (en fonction de la variété et de localisation) sont semer de mi-avril à mi-juin soit une période de 9 semaines. Nous souhaitons étalonner les semis pour permettre à la récolte un étalonnage plus ou moins proportionnelle. Ainsi nous pouvons récolter sur une période de deux mois des courgettes.

Mais dans notre cas nous nous méfions des risques en début et en fin de période et ne souhaitons pas planter autant en début ou en fin de période mais concentrer nos semis sur les semaines les plus propices.

### Fonction de densité

La fonction de densité est le nom que l'on va associé a la fonction qui modelise notre rythme de semis.

![medium](https://mallouestan.org/images/technique/maths/fonctions-densite.svg)

Ci-dessus trois forme de courbe illustre ce que la fonction de densité permet de modelliser. La violette modelise une distribution ou l'on commence avec un rythme très faible et on augmente progressivement ce rythme en plantant de plus en plus de semis chaque semaine (par exemple: semaine 1 -> 10, semaine 2 -> 20, semaine 3 -> 30). La dernière semaine de la période serait la semaine où l'on plante le plus.

La courbe gris-ardoise modelise une situation où chaque semaine on plante un nombre constant de semis (par exemple: semaine 1 -> 20, semaine 2 -> 20, semaine 3 -> 20). La courbe rouge prévoit une répartition où l'on sème peu au début de la période ainsi qu'as la fin en concentrant les semis au millieux de la période (par exemple: semaine 1 -> 10, semaine 2 -> 40, semaine 3 -> 10).

### Determiner la fonction de densité

La courbe violette si dessus semble correspondre à nos attentes malgré le fait qu'il existe d'autres courbes qui modeliserais bien mieux les risques. Nous allons chercher une fonction permetant de calculer le nombre de semis. Pour celà nous allons utiliser l'outil mathématique appelé **intégrale** permetant de calculer l'aire sous une courbe. Dans notre cas c'est cet aire qui va correspondre à l'intégralité de nos semis. Nous allons utiliser des pourcentage pour représenter la quantité de semis à planter sur une période. Ainsi, nous cherchons une courbe qui sur une période donnée à une aire sous sa courbe correspondant à 100% ou 1. Après tout nous voulons sur cette période bien planter l'intégralité (100%) de nos semis.

La courbe violette correspond au polynome -4x<sup>2</sup>+4x mais n'as pas une aire égale à 1 sous la courbe entre 0 et 1 que l'on va utilisé en absisse comme notre période totale. Nous cherchons donc une fonction sous la même forme soit:

$$$
A(-x^2 + x)
$$$

Nous cherchons A pour que l'air sous la parabole soit égale à 1.

#### Mise sous équation

$$$
\int_0^1 A(-x^2 + x)\,dx = 1
$$$

#### Sortir la constante \(A\)

L’intégrale est linéaire, donc on peut sortir la constante :

$$$
A \int_0^1 (-x^2 + x)\,dx = 1
$$$

#### Intégrer terme par terme

On utilise les primitives classiques :

$$$
\int x^2\,dx = \frac{x^3}{3}\\
\int x\,dx = \frac{x^2}{2}
$$$

Donc :

$$$
A \left[ -\frac{x^3}{3} + \frac{x^2}{2} \right]_0^1 = 1
$$$

#### Évaluer entre 0 et 1

$$$
\begin{aligned}
\text{Nous partons de : }
&A \left[ -\frac{x^3}{3} + \frac{x^2}{2} \right]_0^1\\

\text{Évaluation en } x = 1 :\\
-\frac{1^3}{3} + \frac{1^2}{2}
&= -\frac{1}{3} + \frac{1}{2}\\

\text{Évaluation en } x = 0 :\\
-\frac{0^3}{3} + \frac{0^2}{2}
&= 0\\

\text{Calculons la différence d'aire:}\\
\left( -\frac{1}{3} + \frac{1}{2} \right) - 0
&= -\frac{1}{3} + \frac{1}{2}\\

\text{Simplification de la fraction :}\\
-\frac{1}{3} + \frac{1}{2}
&= -\frac{2}{6} + \frac{3}{6}
= \frac{1}{6}\\

\text{Donc :}\\
A \left[ -\frac{x^3}{3} + \frac{x^2}{2} \right]_0^1
&= A \cdot \frac{1}{6}
\end{aligned}
$$$

#### On résout

On veut une aire égale à 1 soit:

$$$
\begin{aligned}
A \cdot \frac{1}{6} &= 1\\
A &= \frac{1}{\frac{1}{6}}\\
A &= 6
\end{aligned}
$$$

#### On obtient

On veut une aire égale à 1 soit:

$$$
\begin{aligned}
f(x)&=6(-x^2+x)\\
&=-6x^2+6x\\
F(x)=\int f(x) &=-2x^3+3x^2
\end{aligned}
$$$

### Appliquons à nos semis

Nous voulons savoir le nombre de semis à planter la 4ême semaine d'une période de 6 semaine. Cela correspond à évaluer:

$$$
\begin{aligned}
&\left[ -2x^3 + 3x^2\right]_{3^{ême}Semaine sur 6}^{4^{ême}Semaine sur 6}\\
\end{aligned}
$$$

Soit:

\begin{aligned}
&=\left[ -2x^3 + 3x^2\right]_{3/6}^{4/6}\\
&=\left[ -2x^3 + 3x^2\right]^{4/6} - \left[ -2x^3 + 3x^2\right]^{3/6}\\
&=\left[ -2\left(\frac{4}{6}\right)^3 + 3\left(\frac{4}{6}\right)^2\right] 
      - \left[ -2\left(\frac{3}{6}\right)^3 + 3\left(\frac{3}{6}\right)^2\right]\\
&=\left[- \frac{16}{27} + \frac{4}{3}\right] - \left[ -\frac{1}{4} + \frac{3}{4}\right]\\
&= \frac{20}{27} - \frac{1}{2}\\
&= \frac{13}{54} \approx 0,24
\end{aligned}

Nous avons donc un résultat de 24% pour la 4ême semaine. La 4eme semaine nous devons semer 24% de nos courgettes la 4ême. Si nous refaisons la même chose pour les autres semaines voilà le résultat:

| Semaine | 1 | 2 | 3 | 4 | 5 | 6 |
| --- | --- | --- | --- | --- | --- | --- |
| Pourcentage de semis | 7,41 | 18,52 | 24,07 | 24,07 | 18,52 | 7,41 |

On remarque que la semaine 3 et 4 au millieux de nos 6 semaines à eux seules représente près de la moitié des semis à faire.

Il suffit d'appliquer ce pourcentage au nombre de semis totale que l'on souhaite planté pour savoir le nombre de semis à planter à une période. Il est évidement plus simple de faire un tableau comme çi-dessus et de s'y référer à chaque fois.

### Conclusion

Nous avons put voire la méthode pour répartir des semis en fonction d'une répartition choisi, dans notre cas une parabole.