
Bevægelsen for spøgelset er relativt enkel takket være Godots indbyggede funktioner for **CharacterBody2D**. Her er de trin, der beskriver, hvordan bevægelsen fungerer:

1. **Initialisering af Variabler**  
   For at spøgelset kan bevæge sig, skal vi først definere en reference til spilleren som en variabel, f.eks. **player**. Dette vil gøre det muligt for spøgelset at vide, hvor spilleren befinder sig i scenen.

2. **Beregning af Retning**  
   For at finde ud af, hvilken retning spøgelset skal bevæge sig i, skal vi bruge spøgelsets nuværende position, lagret i **position**, sammenlignet med spillerens position (også lagret i **player.position**). 
   
   Retningen kan beregnes ved at trække spøgelsets position fra spillerens position:  
   ``` 
   direction = (player.position - position).normalized() 
   ```  
   Normaliseringen sørger for, at retningen altid har en længde på 1, hvilket gør det lettere at håndtere hastigheden.

3. **Hastighed**  
   Spøgelsets hastighed skal defineres som en variabel, f.eks. **ghost_speed**. Denne variabel bestemmer, hvor hurtigt spøgelset bevæger sig mod spilleren.

4. **Beregn Velocity**  
   Ved at gange den normaliserede retning med **ghost_speed**, får vi en hastighedsvektor, der angiver, hvor hurtigt spøgelset skal bevæge sig mod spilleren:  
   ```
   velocity = direction * ghost_speed
   ```

5. **Tildele Velocity**  
   I Godot skal hastigheden tilknyttes den indbyggede variabel **velocity** i **CharacterBody2D**. Det giver os mulighed for at bevæge spøgelset korrekt i scenen.

6. **Optimering af Bevægelse**
   I den **physics_process(delta)** metode skal vi kalde metoden **move_and_slide()**. Denne metode tager højde for fysikken i scenen og tillader spøgelset at glide glat mod spilleren, samtidig med at det tager højde for kollisioner.


