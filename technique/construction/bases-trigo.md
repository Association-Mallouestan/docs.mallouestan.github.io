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
math: true
---

## Bases de trigonométrie

La trigonométrie est née d'une envie de déterminer plus facilement les longueurs et les angles dans les triangles rectangle. Plûtot que de noter les angles ainsi que les longueurs associées à ces angles, les mathématiciens ont décidé de noter et d'étudier seulement les triangles ayant un hypothénuse égale à 1. Effectivement, si on change la taille d'un triangle, les angles restent les mêmes, seul les longueurs changent. Les longueurs changeant de manière proportionnelle ainsi si on connait les longueurs d'un triangle, on peut en déduire les longueurs d'un triangle plus grand ou plus petit en multipliant ou divisant les longueurs par la différence de taille entre les deux triangles.  

![medium](/images/technique/construction/trigo-taille.svg)

Ainsi, les mathématiciens ont décidé de se simplifier la vie en ne s'intéressant qu'aux triangles ayant un hypothénuse (le coté le plus long du triangle) égale à 1. Permetant de déduire les longueurs des cotés des autres triangles simplement en multipliant leurs valeurs par la taille du triangle en question. Pour un triangle iels notaient les longueurs des cotés de ce triangle par rapport à l'angle alpha. Les mathématiciens ont décidé de nommer ces longueurs sinus (la hauteur sur le schéma si dessus) et cosinus (la largeur sur le schéma si dessus).

En étudiant tous les triangles possible avec un hypothénuse égale à 1, on obtient un cercle composé de tous les sommets possible pour ces triangles comme le montre le schéma ci-dessous.  

![medium](/images/technique/construction/trigo-cercle-const.svg)

C'est ce cercle qui a été nommé cercle trigonométrique. La trigonométrie étant principalement l'étude des triangles pouvant être inscrit dans ce cercle. 

![medium](/images/technique/construction/cercle-trigo.svg)

Sur le cercle, dit trigonométrique, ci-dessus apparait le cosinus, le sinus et la tangeante pour un angle donné (sur le schema environ 25 degré). Pour tout angle une paire unique de valeurs de sin, de cos existe. Gràce à ces valeurs nous pouvons faire l'opération inverse et trouver l'angle. L'angle forme un triangle qui à de coté la valeur du sinus et celui du cosinus ainsi qu'un hypthénuse égale au rayon du cercle limité comme nous l'avons dit à 1. Grace au sinus et cosinus nous pouvons donc trouver les angles ou les longueurs des cotés d'un triangle sans connaitre les 2 cotés nécessaire à la résolution avec pythagore.

### Dans un triangle

Un moyen mémotechnique permet d'appliquer plus simplement a trigonométrie, c'est le fameux **SOHCAHTOA** qui permet de se rappeler que dans un triangle 

$$
\begin{aligned}
\text{SOH:}\quad &\sin(\theta) = \frac{\text{côté opposé}}{\text{hypoténuse}} \\
\text{CAH:}\quad &\cos(\theta) = \frac{\text{côté adjacent}}{\text{hypoténuse}} \\
\text{TOA:}\quad &\tan(\theta) = \frac{\text{côté opposé}}{\text{côté adjacent}}
\end{aligned}
$$

![triangle trigo](/images/technique/construction/triangle-trigo.svg)

### Fonctions et fonctions inverses

Les fonctions mathématiques permetent d'obtenir ces différentes distances: sin(angle), cos(angle), tan(angle).

Des fonctions permettent de faire l'opération inverse et ainsi de fournir l'angle à partir de la longueur: sin<sup>-1</sup>(longueur), cos<sup>-1</sup>(distance),tan<sup>-1</sup>(distance).

> Ces fonctons inverses sont parfois noter asin, acos, atan ou arcsin, arccos,arctan.

### Cas d'usage

Prennons quelques exemples:

![small](/images/technique/construction/pythagore-exemple.svg)

Cherchons l'angle du toit de l'abbris çi dessus soit BĈA sur le schéma ci-dessus.

$$
\text{Calcul de l'hypoténuse }(AC) \text{ avec Pythagore} \\
AC^2 = AB^2 + BC^2 = 3^2 + 4^2 = 25 \\
AC = \sqrt{25} = 5
$$

$$
\text{Trigonométrie : calcul de l'angle } \widehat{BCA} \\
\sin(\widehat{BCA}) = \frac{\text{côté opposé}}{\text{hypoténuse}}
= \frac{AB}{AC} = \frac{3}{5}
$$

$$
\widehat{BCA} = \arcsin\!\left(\frac{3}{5}\right)
\approx 36.87^\circ
$$

Maintenant remplaçons le toit pour le remplacer par un toit en chaume nécessitant un angle plus grand, disons 60 degrés. Nous nous interressons donc a l'incidence sur la longueur AB


Si BĈA est égale 60 degrés et nous savons que 

$$
\tan(\widehat{BCA}) = \frac{AB}{BC}
$$

Nous nous intéressons à AB nous pouvons multiplier des deux coté par AC et obtenons:

$$
\tan(\widehat{BCA}) \times BC = AB
$$

soit:

$$
AB = \tan(\widehat{BCA}) \times BC
$$

$$
AB = 4 \times \tan(60^\circ)
$$

$$
AB = 4 \times 1.732
$$

$$
AB = 6.928
$$

Avec un angle de 60 degrés la hauteur de l'abbris augmente de 3,928m car:

$$
6.928 \;(\text{nouvelle hauteur}) \;-\; 3 \;(\text{ancienne hauteur})
= 3.928 \,\text{m}
$$

# Conclusion

Voilà pour un rappel où une introduction à la trigonométrie qui fait peur à beaucoup de monde. En espérant que cela a permis de mieux comprendre les bases de la trigonométrie et comment elle peut être utilisée pour résoudre des problèmes de construction. N'hésitez pas à pratiquer avec différents angles et longueurs pour vous familiariser davantage avec ces concepts.