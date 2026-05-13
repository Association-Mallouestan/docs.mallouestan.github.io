---
date: 2025-03-02 2:00:00
title: Thales et pythagore
description: Apprendre ces outils mathématiques fondamentaux
tags:
  - techniques
  - construction
folders:
  - charpente-4j-debutant-e
image: /images/technique/construction/thales.svg
author: mallouestan
math: true
---

## Thales et pythagore

### Thales

![small](/images/technique/construction/thales.svg)

Le théorème de Thales énonce que dans le cas ci-dessus, les segments DE, AE et AD sont proportionnels respectivement aux segments BC, AC et AB. Autrement dit:

\\({DE \over BC} ={ AE \over AC} = {AD \over AB}\\)

Ce théorème fonctionne quand les droites (DE) et (BC) sont parallèles. Il est important de noter que ce théorème est valable pour n'importe quelle figure, pas seulement pour les triangles rectangles.

---

Super ça ! À quoi cela nous sert ?

Dans le cas d'une maison / abri comme ci-dessous:

![small](/images/technique/construction/thales-exemple.svg)

Nous voulons rajouter un faux plafond dans le but d'isoler. Nous voulons calculer la longueur de la planche / chevron / etc nécessaire. Nous pouvons annoter comme suit:

![small](/images/technique/construction/thales-exemple-annoted.svg)

Nous cherchons a calculer la longueur DE. Thales nous permet de faire ce qui suit:

$$
\begin{aligned}
{DE \over BC} &= {AD \over AB} \\
DE &= BC \cdot {AD \over AB} \\
DE &= 4 \cdot {1 \over 3} \\
&\text{soit environ 1,333 m}
\end{aligned}
$$

### Pythagore

![small](/images/technique/construction/triangle-rectangle.svg)

Le théorème de Pythagore énnonce:

$$
AB^2+AC^2=BC^2
$$

BC étant l'hypothénuse. Soit le carré de l'hypothénuse est égal à la somme des carrés des deux autres cotés.

Pour celle et ceux qui détestent des formules sortant de nulle part, ci dessous est la preuve visuel de ce théoreme.

![small](/images/technique/construction/pythagore-visual.svg)

> Dans (1) nous avons un carré de coté a+b contenant 4 triangles abc. Ces triangles forment un carré inscrit de coté c. Autrement dit, l'aire restante sans les triangles est égale à c<sup>2</sup>.

> Dans (2) nous réarrangeons les triangles sans changer leur taille, de fait sans changer la quantité de place qu'ils occupent. L'aire restante ne change donc pas et reste égale à c<sup>2</sup>.

> Ce réarrangement permet également de voir que l'aire restante égale à c<sup>2</sup> est composée de deux autres carrés respectivement de coté a et b. Nous observons donc que c<sup>2</sup> équivaut effectivement à a<sup>2</sup> + b<sup>2</sup> 

Voici comment ce théorème peut nous être utile dans le cas vu ci-dessus.

![small](/images/technique/construction/pythagore-exemple.svg)

Le faux plafond étant maintenant installé, nous souhaitons calculer la superficie de lambris à poser sous les combles, soit (EC x longueur de la maison). Imaginons un triangle en projetant E sur BC. Autrement dit, projeter signifie ajouter un point que l'on peut nommer E' sur BC, où E'E est perpendiculaire à BC.

$$
\begin{aligned}
E'E &= BD = 2 \\
E'C &= BC - DE = 4 - \frac{4}{3} \text{ soit environ } 2.666 \\
&\text{Appliquons le théorème de Pythagore pour trouver } EC \\
EC^2 &= E'E^2 + E'C^2 \\
EC^2 &= 2^2 + 2.666^2 = 11.11 \\
&\text{Nous cherchons } EC \text{ ,et non } EC^2 \text{ donc} \\
EC &= \sqrt{EC^2} = \sqrt{11.11} \approx 3.333
\end{aligned}
$$

EC est donc égale à 3,333 m. Si notre abris est long (ou profond) de 5 m il nous faudra 3,333*5 m de lambris, soit 16,66 m²