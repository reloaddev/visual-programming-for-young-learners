" *Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically* "

## Hvad er det?

Observer er et design/implementerings mønster som har til formål at signalere til mange forskellige objekter i et en-til-mange forhold uden at lave stærke forbindelser imellem dem.  
Det bliver ofte brugt til at lave event funktionalitet. Fundamentalt består den af two hoved komponenter, en observer og en subjekt. 
En god analogi ville være spil-achievements: når spilleren opnår en handling (subject), informeres flere systemer (UI, statistik, belønninger) uden at disse systemer behøver at kende til hinanden.

## Hvordan?




I Godot hedder deres implementering af observer pattern signals.