<div align="center">

# 🎮 System Breach: Five Nights

![GameMaker](https://img.shields.io/badge/GameMaker-000000?style=for-the-badge&logo=gamemaker&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Opera GX](https://img.shields.io/badge/Opera_GX-FF1B2D?style=for-the-badge&logo=opera&logoColor=white)
![Version](https://img.shields.io/badge/v1.0.0.0-5865F2?style=for-the-badge)

*A Five Nights At Freddy's parody — survival horror in 2D*

[🇮🇹 Italiano](#-italiano) · [🇬🇧 English](#-english)

</div>

---

## 🇮🇹 Italiano

<div align="center">
*Un tributo a Five Nights at Freddy's.*<br>
*Sopravvivi a cinque notti in un edificio abbandonato.*
</div>

---

### 🎮 Descrizione

**System Breach: Five Nights** è un gioco survival horror 2D sviluppato con **GameMaker Studio 2**, ispirato alla saga di *Five Nights at Freddy's*. Vestirai i panni di una guardia notturna assunta per sorvegliare un edificio abbandonato di una compagnia di telecomunicazioni. Il tuo turno va dalle 00:00 alle 06:00 per cinque notti. Usa telecamere di sorveglianza, firewall e una misteriosa maschera per sopravvivere agli ostili che abitano l'edificio.

### 📖 Story

Un'antica compagnia di telecomunicazioni futuristica ha abbandonato i suoi uffici anni fa, lasciando dietro di sé macchinari, server e segreti. Ora l'edificio è infestato da tre entità ostili. Tu sei una guardia notturna assunta per monitorare l'edificio attraverso le telecamere di sicurezza. Ogni notte, dalle 00:00 alle 06:00, dovrai difenderti da queste entità usando gli strumenti a tua disposizione.

### ⚙️ Meccaniche di Gioco

| Meccanica | Descrizione |
|-----------|-------------|
| 📹 **Telecamere** | Monitora la posizione di VAL-Z attraverso le telecamere di sorveglianza |
| 🛡️ **Firewall 1 & 2** | Attiva i firewall per bloccare i tentativi di hacking di VAL-Z alle porte dell'ufficio |
| 🎭 **Maschera Valsy** | Indossa la maschera per nasconderti da The Unknown quando entra in ufficio |
| ⚡ **Campo EM** | Gestisci il campo elettromagnetico per contenere The Singularity |
| 💻 **Hacking** | Difenditi dagli attacchi informatici con i minigiochi di hacking |
| 🌙 **5 Notti** | Ogni notte aumenta la difficoltà — sopravvivi fino alle 06:00 |

### 👾 Personaggi / Nemici

| VAL-Z | The Singularity | The Unknown |
|-------|----------------|-------------|
| <div align="center">🤖</div> | <div align="center">💻</div> | <div align="center">👻</div> |
| **Ex-mascotte robot** umanoide della compagnia, abbandonata e impazzita | **IA senziente** nata nei server abbandonati del lato destro | **Entità incappucciata** tenuta in una cella oscura, documenti governativi classificati |
| • Si muove silenziosamente stanza per stanza<br>• Tenta di hackerare i firewall per arrivare in ufficio<br>• Aggressività aumenta ogni notte | • Tenta di sincronizzare i processori per un attacco totale<br>• Se il campo EM scende a 0%, causa un blackout<br>• Disabilita tutti i sistemi di difesa | • Cerca di hackerare la barriera energetica per fuggire<br>• Comunica con suoni demoniaci e sussurri<br>• Uccide all'istante se non indossi la maschera |
| **Difesa:** Firewall 1 e 2 | **Difesa:** Mantieni il campo EM attivo | **Difesa:** Maschera Valsy |

### 🖥️ Requisiti di Sistema

**Windows:**
- **OS:** Windows 7 o successivo
- **CPU:** Dual-core 2.0 GHz
- **RAM:** 2 GB
- **GPU:** Compatibile DirectX 9.0c
- **Storage:** 500 MB
- **Audio:** Scheda audio compatibile

**Opera GX (Web):**
- Browser Opera GX
- Supporto WebGL
- Connessione internet

### 🚀 Come Eseguire

**Windows:**
1. Apri `5_Applicativo/`
2. Avvia `SystemBreach-FiveNights.yyp` con GameMaker Studio 2
3. Premi **Play** (▶️) per eseguire il gioco

In alternativa, dalla build Windows già compilata, esegui `SystemBreach-FiveNights.exe`.

### 📁 Struttura del Progetto

```
System-Breach-Five-Nights/
├── 1_QdC/                      # Quaderno dei Capi d'Appalto (requisiti)
├── 2_Abstract/                 # Abstract del progetto
├── 3_Documentazione/           # Documentazione tecnica
├── 4_Diari/                    # Diari di sviluppo
├── 5_Applicativo/              # Gioco (GameMaker Studio 2)
│   ├── objects/                # 26 oggetti di gioco
│   ├── rooms/                  # 9 stanze/scene
│   ├── sprites/                # 25 sprite e asset visivi
│   ├── sounds/                 # Audio (musica, effetti)
│   ├── shaders/                # Shader GLSL (luminosità/contrasto)
│   └── datafiles/              # Video cutscene (menu, notti, jumpscare)
├── 6_Database/                 # Database
└── 7_Allegati/                 # Asset di design
    ├── Mockups/                # Concept art
    ├── User Interface/         # UI design
    ├── Personaggi/             # Character art
    ├── Stanze/                 # Room backgrounds
    ├── Telecamere/             # Camera feed assets
    ├── Swimlane&UseCase/       # Diagrammi UML
    ├── Poster.pdf              # Poster del progetto
    └── Sprint_Planning.xlsx    # Pianificazione sprint
```

### 🛠️ Tecnologie Utilizzate

- **GameMaker Studio 2** — IDE v2024.14.2.213
- **GameMaker Language (GML)** — Linguaggio di scripting
- **GLSL ES** — Shader per luminosità/contrasto
- **Formati:** MP4, PNG, MP3, Draw.io, Microsoft Project

### 📜 Crediti e Fonti

- **Musica di sottofondo:** [Freesound.org](https://freesound.org)
- **Effetti sonori:** [Freesound.org](https://freesound.org), audiomass.co
- **Video:** Kapwing, Grok (AI video generation), CapCut (montaggio)
- **Sprite e UI:** Realizzati per il progetto

---

## 🇬🇧 English

<div align="center">
*A tribute to Five Nights at Freddy's.*<br>
*Survive five nights in an abandoned building.*
</div>

---

### 🎮 Description

**System Breach: Five Nights** is a 2D survival horror game developed with **GameMaker Studio 2**, inspired by the *Five Nights at Freddy's* saga. You play as a night security guard hired to watch over an abandoned telecommunications company building. Your shift runs from 00:00 to 06:00 for five nights. Use surveillance cameras, firewalls, and a mysterious mask to survive the hostile entities that inhabit the building.

### 📖 Story

A former futuristic telecommunications company abandoned its offices years ago, leaving behind machinery, servers, and secrets. The building is now haunted by three hostile entities. You are a night guard hired to monitor the building through security cameras. Each night, from 00:00 to 06:00, you must defend yourself from these entities using the tools at your disposal.

### ⚙️ Game Mechanics

| Mechanic | Description |
|----------|-------------|
| 📹 **Cameras** | Monitor VAL-Z's position through surveillance cameras |
| 🛡️ **Firewall 1 & 2** | Activate firewalls to block VAL-Z's hacking attempts on the office doors |
| 🎭 **Valsy Mask** | Wear the mask to hide from The Unknown when it enters the office |
| ⚡ **EM Field** | Manage the electromagnetic field to contain The Singularity |
| 💻 **Hacking** | Defend against cyber attacks with hacking minigames |
| 🌙 **5 Nights** | Difficulty increases each night — survive until 06:00 |

### 👾 Characters / Enemies

| VAL-Z | The Singularity | The Unknown |
|-------|----------------|-------------|
| <div align="center">🤖</div> | <div align="center">💻</div> | <div align="center">👻</div> |
| Former **humanoid mascot robot** of the company, abandoned and gone rogue | A **sentient AI** born in the abandoned servers on the right side | A **hooded entity** held in a dark cell, government documents classified |
| • Moves silently room by room<br>• Attempts to hack firewalls to reach the office<br>• Aggression increases each night | • Attempts to synchronize processors for a total attack<br>• If the EM field drops to 0%, causes a blackout<br>• Disables all defense systems | • Attempts to hack the energy barrier to escape<br>• Communicates through demonic sounds and whispers<br>• Kills instantly if you're not wearing the mask |
| **Defense:** Firewall 1 & 2 | **Defense:** Keep the EM field active | **Defense:** Valsy Mask |

### 🖥️ System Requirements

**Windows:**
- **OS:** Windows 7 or later
- **CPU:** Dual-core 2.0 GHz
- **RAM:** 2 GB
- **GPU:** DirectX 9.0c compatible
- **Storage:** 500 MB
- **Audio:** Compatible sound card

**Opera GX (Web):**
- Opera GX browser
- WebGL support
- Internet connection

### 🚀 How to Run

**Windows:**
1. Open `5_Applicativo/`
2. Launch `SystemBreach-FiveNights.yyp` with GameMaker Studio 2
3. Press **Play** (▶️) to run the game

Alternatively, run the compiled `SystemBreach-FiveNights.exe` from the Windows build.

### 📁 Project Structure

```
System-Breach-Five-Nights/
├── 1_QdC/                      # Requirements specification
├── 2_Abstract/                 # Project abstract
├── 3_Documentazione/           # Technical documentation
├── 4_Diari/                    # Development diary
├── 5_Applicativo/              # Game application (GameMaker Studio 2)
│   ├── objects/                # 26 game objects
│   ├── rooms/                  # 9 rooms/scenes
│   ├── sprites/                # 25 sprites and visual assets
│   ├── sounds/                 # Audio (music, SFX)
│   ├── shaders/                # GLSL shaders (brightness/contrast)
│   └── datafiles/              # Cutscene videos (menu, nights, jumpscare)
├── 6_Database/                 # Database
└── 7_Allegati/                 # Design assets
    ├── Mockups/                # Concept art
    ├── User Interface/         # UI design
    ├── Personaggi/             # Character art
    ├── Stanze/                 # Room backgrounds
    ├── Telecamere/             # Camera feed assets
    ├── Swimlane&UseCase/       # UML diagrams
    ├── Poster.pdf              # Project poster
    └── Sprint_Planning.xlsx    # Sprint planning
```

### 🛠️ Technologies Used

- **GameMaker Studio 2** — IDE v2024.14.2.213
- **GameMaker Language (GML)** — Scripting language
- **GLSL ES** — Shader for brightness/contrast
- **Formats:** MP4, PNG, MP3, Draw.io, Microsoft Project

### 📜 Credits & Sources

- **Background music:** [Freesound.org](https://freesound.org)
- **Sound effects:** [Freesound.org](https://freesound.org), audiomass.co
- **Videos:** Kapwing, Grok (AI video generation), CapCut (video editing)
- **Sprites & UI:** Original work for this project

---

<div align="center">

*System Breach: Five Nights — Un progetto sviluppato con GameMaker Studio 2*

</div>
