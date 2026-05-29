<div align="center">

# 🎮 System Breach: Five Nights

![GameMaker](https://img.shields.io/badge/GameMaker-000000?style=for-the-badge&logo=gamemaker&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

![Version](https://img.shields.io/badge/v1.0.0.0-5865F2?style=for-the-badge)

*A Five Nights At Freddy's parody — survival horror*

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

**System Breach: Five Nights** è un gioco survival horror sviluppato con **GameMaker Studio 2**, ispirato alla saga di *Five Nights at Freddy's*. Vestirai i panni di una guardia notturna assunta per sorvegliare un edificio abbandonato di una compagnia di telecomunicazioni. Il tuo turno va dalle 00:00 alle 06:00 per cinque notti. Usa telecamere di sorveglianza, firewall e una misteriosa maschera per sopravvivere agli ostili che abitano l'edificio.

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
│   └── UML/                    # Diagramma classi oggetti (PUML)
├── 4_Diari/                    # Diari di sviluppo
├── 5_Applicativo/              # Gioco (GameMaker Studio 2)
│   └── SystemBreach-FiveNights/
│       ├── objects/            # 47 oggetti (controller, bottoni, nemici, UI, telecamere)
│       ├── rooms/              # 13 stanze (menu, manuale, ufficio, telecamere, hacking, singularity, unknown, jumpscare, end)
│       ├── sprites/            # 37 sprite (sfondi, bottoni, personaggi, UI, maschera)
│       ├── sounds/             # 9 suoni (musiche, click, maschera, scossa, unknown)
│       ├── shaders/            # 3 shader GLSL (luminosità/contrasto, green screen, green screen jumpscare)
│       ├── scripts/            # 2 script (ridimensionamento, salvataggio)
│       ├── fonts/              # 1 font (fnaf_font)
│       ├── options/            # Opzioni build (Windows, main)
│       └── datafiles/          # 13 file (video cutscene, font, effetti telecamera)
├── 6_Database/                 # Database (vuoto)
└── 7_Allegati/                 # Asset di design e documenti
    ├── Assets/                 # Asset originali (audio, bottoni, menu, personaggi, stanze, video, telecamere)
    │   ├── AudioFIles/         # 10 file audio (musiche, effetti, voci unknown)
    │   ├── GameButtons/        # 11 bottoni (cam, firewall, maschera, carica, scossa)
    │   ├── GameEnding/         # 2 video (loss, win)
    │   ├── GameStart/          # 11 file (video notti + overlay testo)
    │   ├── Jumpscares&Attacchi/ # jumpscare, attacco singularity
    │   ├── Menu/               # Menu, impostazioni, manuale (PSD + PNG + video)
    │   ├── Personaggi/         # VAL-Z (6 PNG), The Unknown (2 PNG)
    │   ├── Post-Credits/       # Immagine post-crediti
    │   ├── Stanze/             # 9 sfondi stanze (ufficio, attacco, singularity, unknown, VAL-Z)
    │   └── Telecamere/         # Feed telecamere (PNG, PSD, video cambio/static)
    ├── Mockups/                # 5 concept art (attacco, puppet, stanza, telecamere, ufficio)
    ├── Swimlane&UseCase/       # Diagrammi UML (swimlane VAL-Z, The Singularity + use case)
    ├── old_gantt/              # Vecchi Gantt (.mpp)
    ├── Gantt-cons.mpp          # Gantt consolidato
    ├── Gantt-pre.mpp           # Gantt preliminare
    ├── Poster.pdf              # Poster del progetto
    ├── Poster.pptx             # Poster editabile
    ├── Sprint_Planning.xlsx    # Sprint planning
    ├── lore.txt                # Lore e backstory
    └── sources.txt             # Fonti asset
```

### 🛠️ Tecnologie Utilizzate

- **GameMaker Studio 2** — IDE v2024.14.2.213
- **GameMaker Language (GML)** — Linguaggio di scripting
- **GLSL ES** — 3 shader (luminosità/contrasto, green screen, green screen jumpscare)

### 📜 Crediti e Fonti

- **Musica di sottofondo:** [Freesound.org](https://freesound.org)
- **Effetti sonori:** [Freesound.org](https://freesound.org), audiomass.co
- **Video:** Kapwing, Grok (AI video generation), CapCut (montaggio)

---

## 🇬🇧 English

<div align="center">
*A tribute to Five Nights at Freddy's.*<br>
*Survive five nights in an abandoned building.*
</div>

---

### 🎮 Description

**System Breach: Five Nights** is a survival horror game developed with **GameMaker Studio 2**, inspired by the *Five Nights at Freddy's* saga. You play as a night security guard hired to watch over an abandoned telecommunications company building. Your shift runs from 00:00 to 06:00 for five nights. Use surveillance cameras, firewalls, and a mysterious mask to survive the hostile entities that inhabit the building.

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
│   └── UML/                    # Object class diagram (PUML)
├── 4_Diari/                    # Development diary
├── 5_Applicativo/              # Game application (GameMaker Studio 2)
│   └── SystemBreach-FiveNights/
│       ├── objects/            # 47 objects (controllers, buttons, enemies, UI, cameras)
│       ├── rooms/              # 13 rooms (menu, manual, office, cameras, hacking, singularity, unknown, jumpscare, end)
│       ├── sprites/            # 37 sprites (backgrounds, buttons, characters, UI, mask)
│       ├── sounds/             # 9 sounds (music, click, mask, shock, unknown)
│       ├── shaders/            # 3 GLSL shaders (brightness/contrast, green screen, green screen jumpscare)
│       ├── scripts/            # 2 scripts (resize, save)
│       ├── fonts/              # 1 font (fnaf_font)
│       ├── options/            # Build options (Windows, main)
│       └── datafiles/          # 13 files (cutscene videos, font, camera effects)
├── 6_Database/                 # Database (empty)
└── 7_Allegati/                 # Design assets and documents
    ├── Assets/                 # Original assets (audio, buttons, menu, characters, rooms, video, cameras)
    │   ├── AudioFIles/         # 10 audio files (music, SFX, unknown voices)
    │   ├── GameButtons/        # 11 buttons (cam, firewall, mask, charge, shock)
    │   ├── GameEnding/         # 2 videos (loss, win)
    │   ├── GameStart/          # 11 files (night videos + text overlays)
    │   ├── Jumpscares&Attacchi/ # jumpscare, singularity attack
    │   ├── Menu/               # Menu, settings, manual (PSD + PNG + video)
    │   ├── Personaggi/         # VAL-Z (6 PNG), The Unknown (2 PNG)
    │   ├── Post-Credits/       # Post-credits image
    │   ├── Stanze/             # 9 room backgrounds (office, attack, singularity, unknown, VAL-Z)
    │   └── Telecamere/         # Camera feeds (PNG, PSD, cambio/static video)
    ├── Mockups/                # 5 concept arts (attack, puppet, room, cameras, office)
    ├── Swimlane&UseCase/       # UML diagrams (VAL-Z, The Singularity swimlanes + use case)
    ├── old_gantt/              # Old Gantt charts (.mpp)
    ├── Gantt-cons.mpp          # Consolidated Gantt
    ├── Gantt-pre.mpp           # Preliminary Gantt
    ├── Poster.pdf              # Project poster
    ├── Poster.pptx             # Editable poster
    ├── Sprint_Planning.xlsx    # Sprint planning
    ├── lore.txt                # Game lore and backstory
    └── sources.txt             # Asset sources
```

### 🛠️ Technologies Used

- **GameMaker Studio 2** — IDE v2024.14.2.213
- **GameMaker Language (GML)** — Scripting language
- **GLSL ES** — 3 shaders (brightness/contrast, green screen, green screen jumpscare)

### 📜 Credits & Sources

- **Background music:** [Freesound.org](https://freesound.org)
- **Sound effects:** [Freesound.org](https://freesound.org), audiomass.co
- **Videos:** Kapwing, Grok (AI video generation), CapCut (video editing)

---

<div align="center">

*System Breach: Five Nights — Un progetto sviluppato con GameMaker Studio 2*

</div>
