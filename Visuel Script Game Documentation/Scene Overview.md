
# Setup af hoved scene



![[Main Scene.png]]

![[Main Scene Tree.png]]


- **World**
    - Hovednoden, der repræsenterer hele spilverdenen.
    - Indeholder alle elementer, der udgør niveauet eller scenen.
- **Background**
    
    - Indeholder 2d paralax elementer, der udgør baggrunden i scenen.
- **Foreground**
    
    - Indeholder elementer, der er i forgrunden jorden som spilleren går rundt på.
    
- **Player (CharacterBody2D)**
    
    - Hovednoden for spilleren.
    - Ansvarlig for bevægelse og interaktioner med miljøet.
- **GhostPool**
    - En container for spøgelsesfigurer, der kan genereres i scenen.
- **AudioStreamPlayer2D**
    
    - Spiller lyd i spillet, som denne er specifikt til baggrundsmusik.
    

# Spiller Karakteren

![[Player.png]]

![[Player Scene Tree.png]]

- **Player (CharacterBody2D)**
    - Hovednoden for spilleren.
    - Ansvarlig for bevægelse og interaktioner med miljøet.
- **AnimatedSprite2D**
    - Viser spillerens animationer.
- **CollisionShape2D**
    - Definerer spillerens kollisionsform.
    - Gør det muligt for "Player" at interagere med andre objekter korrekt.
- **ShotGun (Scene)**
    - En separat scene til shotgun-våbnet.
    - Indholder en sprite, der visualiserer shotgunen.
- **AudioStreamPlayer2D**
    - Spiller lydeffekter for spilleren, som f.eks. lyde ved bevægelse.
- **Camera2D**
    - Sikrer, at kameraet følger spilleren i scenen.

# Spøgelse


![[Ghost.png|297]]

![[Ghost Scene Tree.png]]

1. **Ghost (CharacterBody2D)**
    - Hovednoden for spøgelsesfiguren.
    - Ansvarlig for bevægelse og interaktioner med miljøet.

2. **AnimatedSprite2D**
    - Viser spøgelsets animationer.
    - Giver liv og bevægelse til "Ghost" i forbindelse med spillerens handlinger.
    
3. **CollisionShape2D**
    - Definerer spøgelsets kollisionsform.
    - Gør det muligt for "Ghost" at interacte med andre objekter og spilleren korrekt.
    
4. **Damage Zone (Area2D)**
	- En zone, hvor spilleren kan tage skade, hvis de nærmer sig spøgelset.
    - Funktionelt skilt fra selve spøgelset, men tæt tilknyttet.
5. **CollisionShape2D (under Damage Zone)**
    
    - Definerer kollisionsformen for skadezonen.
    - Forhindrer skader, medmindre spilleren er inden for denne zone.
6. **AudioStreamPlayer2D**
    
    - Spiller lydeffekter for spøgelset, f.eks. lyde ved angreb eller når det bevæger sig.
    - Kan aktiveres ved bestemte handlinger, hvilket øger den visuelle og auditive oplevelse.



# Shotgun

![[ShotGun.png]]

![[ShotGun Scene Tree.png]]

- **ShotGun**
    - Hovednoden, der repræsenterer shotgun-scenen.
    - Samler alle relaterede elementer for våbnet.
- **ShootPoint**
    
    - En node, der angiver, hvor projectile (f.eks. kugler) skal affyres fra.
    - Gør det muligt at justere affyringspositionen i forhold til shotgunens sprite.
- **AnimatedSprite2D**
    
    - Viser animationer for shotgunen, som f.eks. recoil og affyring.
    - Giver dynamik og visuel feedback under spillet.
- **AudioStreamPlayer2D**
    
    - Spiller lydeffekter relateret til shotgunen, f.eks. når den affyres.
    - Forbedrer den auditive oplevelse ved at aktivere lyde i forbindelse med handlinger.


# Kugle 
![[Bullet.png]]

![[Bullet Scene Tree.png]]
- **Bullet (Area2D)**
    
    - Hovednoden, der repræsenterer kuglen i spillet som en `Area2D`.
    - Tillader registrering af kollisioner og overlap med andre objekter.
- **Sprite (Bullet)**
    
    - Viser kulgens grafik.
    - Giver en visuel repræsentation af projektilen i spillet.
- **CollisionShape2D**
    
    - Definerer kuglens kollisionsform.
    - Sikrer, at kuglen kan registrere kollisioner med andre objekter korrekt.
- **PointLight2D**
    
    - Tilføjer lys for at give et mere dynamisk udseende til kuglens bevægelse.
- **Timer**
    
    - Anvendes til at styre kuglens livscyklus, såsom hvornår den skal forsvinde.


# Spøgelse Pool

![[GhostPool Scene Tree.png]]

- **GhostPool**
    
    - Hovednoden, der fungerer som en beholder for spøgelsesfigurer i spillet.
    - Organiserer og administrerer flere instanser af spøgelser.
- **Timer**
    
    - Bruges til at styre tidsrelaterede funktioner for spøgelsesfigurerne, som når de skal spawne.
- **Timer2**
    
    - En ekstra timer til at spawne spøgelse.
- **Timer3**
    
    - En ekstra timer til at spawne spøgelse.
- **Timer4**
    
    - En ekstra timer til at spawne spøgelse.
- **Timer5**
    
    - En ekstra timer til at spawne spøgelse.
- **Timer6**
    
    - En ekstra timer til at spawne spøgelse.