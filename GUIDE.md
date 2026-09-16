# Maputnik 

## Zoom
Les niveaux de zoom auxquels les moteurs de rendu de maplibre rendent les tuiles ne correspondent pas au niveau de zoom annoncé.

Ex: Raster (idem MapLibre GL, MapLibre native):
Niveau 11 = 11,5

Vecteur:
Niveau 11 = 11 Maplibre GL, 12 MapLibre Native
 

## Pointillé (dasharray):

Tableau [] comportant un nombre pair d'entiers (["literal", [2, 1]])

Le premier est visible, le second correspond au trou.
Les entiers sont des multiples de la largeur du trait en question.

Ex: si le trait fait 2px de large [2,1] répetera le motif 4px (visible), 2px (trou), 4px (visible), 2px (trou), etc.
xxxx..xxxx..

On peut aussi créer un motif irrégulier en ajoutant plus de nombre:
Ex: [3,1,4,5] -> 6px (visible), 2px (trou), 8px (visible), 10px (trou), 6px (visible), etc.
xxxxxx..xxxxxxxx..........xxxxxx