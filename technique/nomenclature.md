## Nomenclature dans le dossier "technique"

### Dossier de premier niveau

Chaque dossier dans "technique" est dédié à une thématique particulière. Par exemple "vannerie", "bindcraft", "construction", "firecraft", etc... Ces dossier sont nommés en minuscule et sans espace, accents ou ponctuation. Les espaces sont remplacées par des tirets.

```regex
/[a-z0-9]+(-[a-z0-9]+)*/
```

Exemples: ```bindcraft```, ```firecraft```, ```construction```

### Dans chaque dossier "thème"

Chaque dossier de thème contient des sous-dossiers et des fichiers markdown. Deux sous-dossiers sont "standard":

1. Le dossier "images" content les images utilisées dans les fichiers markdown du dossier parent.
2. Le dossier "formations" contient les formations liées au thème.

Les fichiers markdown dans le dossier "thème" sont des articles ou des tutoriels liés au thème. Ils sont nommés en minuscule, sans espace, accents ou ponctuation. Les espaces sont remplacées par des tirets.

```regex
/[a-z0-9]+(-[a-z0-9]+)*\.md/
```

Exemples: ```type-de-pierres.md```, ```bases.md```, ```les-huits-noeuds-bases.md```

### Dans le dossier "formations"

Chaque formation est décrite dans un fichier markdown. Le nom du fichier commence par un code indiquant le niveau et la durée de la formation, suivi du nom de la formation. Le code de niveau et de durée est séparé du nom par deux tirets.

```regex
/n[1-9](?=[sjh][1-9]+)([s][1-9])?([j][1-6])?([h](1?[0-9]?|2[0-3]))?--[a-z0-9]+(-[a-z0-9]+)*\.md/
```

Exemples: ```n1j2--construction-et-outils-primitifs.md```, ```n2j3--vannerie-bases.md```, ```n1h4--allumer-un-feu.md```, ```n3s1j3--initiation-a-la-survie.md```, ```n1j2h4--initiation-a-la-survie.md```

### Dans le dossier "images"

Les images sont nommées en minuscule, sans espace, accents ou ponctuation. Les espaces sont remplacées par des tirets. L'extension de fichier est conservée en minuscule.

```regex
/[a-z0-9]+(-[a-z0-9]+)*\.(png|jpg|jpeg|gif)/
```

Exemples: ```noeud-huit.png```, ```noeud-de-chaise.jpeg```