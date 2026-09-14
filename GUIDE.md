# Maputnik 

## Pointillé (dasharray):

Tableau [] comportant un nombre pair d'entiers (["literal", [2, 1]])

Le premier est visible, le second correspond au trou.
Les entiers sont des multiples de la largeur du trait en question.

Ex: si le trait fait 2px de large [2,1] répetera le motif 4px (visible), 2px (trou), 4px (visible), 2px (trou), etc.
xxxx..xxxx..

On peut aussi créer un motif irrégulier en ajoutant plus de nombre:
Ex: [3,1,4,5] -> 6px (visible), 2px (trou), 8px (visible), 10px (trou), 6px (visible), etc.
xxxxxx..xxxxxxxx..........xxxxxx