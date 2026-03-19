" *Improve performance and memory use by reusing objects from a fixed pool instead of allocating and freeing them individually.* "

# Hvad er det?

Object pooling er software pattern som ligger inden for optimering kategorien. En god analogi er en restaurant hvor objekterne er talerkerne som bruges til at servere raterne til kunderne. Den pooling ville restauranten smide talerkerne ud efter brug og bestille nye for hver eneste ret som bestilles. Dette kan kun gå når restauranten har en lille mængde kunder da bestillingen af nye tallerkner tager tid da de skal ankomme til restauranten og afskaffelsen tager også tid siden de skal køres væk. Dette er en massiv spild af resurser det giver meget mere mening at rengøre(nulstille) talerkerne og bruge dem igen til nye retter og kun bestille nye nå de er ved at løbe tør.
# Hvordan?

En meget simpel måde at implementere **object pooling** på er ved at bruge to lister: den ene for aktive objekter og den anden for inaktive objekter. Den inaktive liste bliver ved opstart initialiseret til en bestemt størrelse. Når en funktionalitet i verden ønskes at "spawne" et nyt objekt, kalder den en metode i objektpoolen, som tjekker, om der er objekter i den inaktive liste. Hvis der er nogen, tager den et fra listen, aktiverer det og flytter det til den aktive liste.

Når objektet skal returneres til poolen, kalder det enten selv en metode på poolen eller en anden funktion, der kalder den for det, hvor objektet bliver deaktiveret, nulstillet, fjernet fra den aktive liste og tilføjet til den inaktive lis