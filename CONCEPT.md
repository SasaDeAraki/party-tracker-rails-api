## Characters API - Rails API-only
> O intuito é montar uma API que gerencie de forma básica jogadores, personagens e suas mesas pra N campanhas de RPG.

### Models
- #### Player
    - **Relacionamentos:**
        - Personagens (1..N)
    - **Atributos:**
        - Nome
- #### Mesa
    - **Relacionamentos:**
        - Personagens(1..N)
    - **Atributos:**
        - Nome
        - Sistema
- #### Personagem
    - **Relacionamentos:**
        - Jogador(1..1)
        - Mesa(N..1)
    - **Atributos:**
        - Nome
        - Hp
        - Classe
        - Nivel
- #### MesaJogador
    > pertence à :mesa
    > pertence à :jogador