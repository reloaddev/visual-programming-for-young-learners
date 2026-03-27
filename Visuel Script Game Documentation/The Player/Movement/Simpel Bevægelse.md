## Højre/Venstre-bevægelse
Lad os starte med at få vores karakter til at bevæge sig fra side til side.  
Som gennemgået i [[Scene Overview]] er spillerens hovednode en CharacterBody2D, som er en indbygget node med funktionalitet, der gør det let at implementere bevægelse.

1. Åbn først spillerens script (det kan findes i Scripts/Player/player.torch).
2. Du kan se, at der allerede er nogle variabler og metoder defineret. Disse relaterer sig til spillerens animationer og er ikke fokus her, men tag endelig et kig og stil spørgsmål, hvis I er nysgerrige.
3. Tilføj en variabel, som hedder hastighed (eller speed), som sættes til en integer-værdi. Exportér den, så den kan sættes i editoren. Lav også en variabel, der hedder max_hastighed (max_speed); den skal vi bruge senere.
4. Nu har vi de basale variabler, vi har brug for. I event grafen højreklik og tilføj en PhysicsProcess-node. Det er fra denne, at al bevægelsesfunktionalitet vil blive kaldt.
5. Helt basalt vil vi tjekke, om venstre eller højre knap bliver trykket, og derefter bevæge os i den retning.
   6. Input kan findes ved at bruge Input-noder, så tilføj to af dem til grafen.
   7. Klik på noderne, og i højre side af skærmen vælg, hvilken knap de skal overvåge. Som du kan se, er der allerede mange defineret; dem vi er interesseret i, er "højre" og "venstre". De tjekker, om højre eller venstre piletast er blevet trykket.
   8. Nu skal vi bruge to if-statements til at tjekke, om knapperne bliver trykket på. I orchestrator hedder if-noderne "branches", så tilføj to af disse og forbind boolean-outputtet fra Input-noderne til hver.
   9. Fra PhysicsProcess træk nu en forbindelse til den første branch; fra denne branch træk så den negative udgang til den næste.
      1. Vi kan tjekke, at det virker, ved at placere en print-node ved den positive output for hver branch, hvor vi kan udskrive "Højre" eller "Venstre", afhængigt af hvad der bliver trykket på.
10. CharacterBody2D har en indbygget variabel, som hedder velocity, der bestemmer i hvilken retning karakteren bevæger sig.
   11. For den positive output på hver branch sætter vi nu velocity til at være lig med vores hastighedsvariabel. Dette gør vi ved at bruge en SetVelocity-node. Tilføj to af dem, én til hver branch, og træk vores hastighedsvariabel ind i grafen. Vælg "get hastighed", når du bliver spurgt af programmet.
   12. Til venstrebevægelsen skal vi gøre det ekstra: multiplicere med -1, da den skal bevæge sig i den negative retning af koordinatsystemet.
   13. Til sidst kalder vi move_and_slide-metoden for at bevæge karakteren.
14. Tillykke! Du har nu en karakter, som kan bevæge sig til højre og venstre. Næste trin er at få den til at hoppe.

## Hop

