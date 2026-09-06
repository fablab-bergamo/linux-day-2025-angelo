# Diffondere un progetto Open Hardware: il caso di Angelo

Slide per il talk tenuto al Linux Day 2025 di Bergamo da Pascal Brunot (FabLab Bergamo).

La presentazione ripercorre il progetto Angelo, un amplificatore audio open hardware per persone con ipoacusia: le sfide della replica (sicurezza, normative, responsabilità), l'analisi tecnica (modellazione, simulazione LTSPICE, verifica sperimentale), l'approccio del FabLab Bergamo per la diffusione sicura del dispositivo e le possibili evoluzioni (miniaturizzazione, limitazione del volume con AGC).

## Contenuti

- `slides.md` - sorgente Marp della presentazione completa
- `slides-short-version.md` - sorgente Marp della versione ridotta
- `themes/angelo-theme.css` - tema grafico usato dalle slide
- `immagini/` - immagini e diagrammi
- `dist/` - output di build (HTML/PDF), generato e non versionato

## Build

Richiede [Node.js](https://nodejs.org/) 18+ e npm; [Marp CLI](https://github.com/marp-team/marp-cli) viene installato come dipendenza di sviluppo.

```bash
git clone https://github.com/fablab-bergamo/linux-day-2025-angelo.git
cd linux-day-2025-angelo
npm install
```

```bash
npm run build       # HTML + PDF
npm run build:html  # solo HTML
npm run build:pdf   # solo PDF
npm run watch       # ricompila a ogni modifica
npm run serve       # server locale con live reload su http://localhost:8080
```

In alternativa, `./build.sh` compila sia la versione completa che quella ridotta in HTML e PDF.

I file generati finiscono in `dist/`. Una GitHub Action (`.github/workflows/build.yml`) esegue la stessa build a ogni push e pubblica il risultato su GitHub Pages.

La generazione del PDF richiede Chrome/Chromium installato localmente (`sudo apt install chromium-browser` su Debian/Ubuntu, `sudo dnf install chromium` su Fedora).

### Modalità presentazione

Apri `dist/slides.html` in un browser: `F` per il fullscreen, frecce ←/→ per navigare, `Esc` per uscire.

## Progetto Angelo

- **Progettista**: Luciano Fumagalli
- **Costo**: ~15-20€ di componenti
- **Certificazione**: [OSHWA IT000017](https://certification.oshwa.org/it000017.html)
- **Licenza**: CC-BY-SA 4.0
- **Sito**: https://angelo-amplifica-emozioni.jimdosite.com

Caratteristiche tecniche: pre-amplificatore TL072 + amplificatore audio LM386, guadagno 49.6dB @ 1.5kHz ottimizzato per le frequenze del parlato, alimentazione 9V ricaricabile, PCB 70x70mm (versioni TH e SMD), custodia stampabile in 3D.

## FabLab Bergamo

https://www.fablabbergamo.it - in collaborazione con BgLUG.

## Licenza

- Presentazione: CC-BY-SA 4.0 © 2025 Pascal Brunot, FabLab Bergamo
- Progetto Angelo: CC-BY-SA 4.0 © Luciano Fumagalli

## Contatti

Pascal Brunot, tramite [FabLab Bergamo](https://www.fablabbergamo.it).
