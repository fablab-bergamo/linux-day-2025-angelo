# Diffondere un progetto Open Hardware: il caso di Angelo

Presentazione per **Linux Day 2025 - Bergamo**

## Descrizione

Questa repository contiene i materiali per la presentazione "Diffondere un progetto Open Hardware: il caso di Angelo", tenuta al Linux Day 2025 di Bergamo da Pascal Brunot (FabLab Bergamo).

La presentazione analizza:
- Il progetto Angelo per l'ipoacusia (amplificatore audio open hardware)
- Sfide alla replica: sicurezza, normative, responsabilità
- Analisi tecnica completa: modellazione, simulazione LTSPICE, verifica sperimentale
- Approccio del FabLab Bergamo per la diffusione sicura del dispositivo
- Miglioramenti possibili: miniaturizzazione, limitazione volume (AGC)
- Conclusioni e lezioni apprese

## 📁 Contenuti

- `slides.md` - Sorgente Markdown della presentazione (Marp)
- `dist/slides.html` - Presentazione HTML (autogenerata)
- `dist/slides.pdf` - Presentazione PDF (autogenerata)
- `RelazioneANGELO.txt` - Relazione tecnica completa del progetto
- `base.md`, `base2.md` - Bozze e materiali preparatori

## 🚀 Build della presentazione

### Prerequisiti

- [Node.js](https://nodejs.org/) v18+ e npm
- [Marp CLI](https://github.com/marp-team/marp-cli) (verrà installato automaticamente)

### Installazione

```bash
# Clona la repository
git clone https://github.com/YOUR-USERNAME/linux-day-2025-openhw.git
cd linux-day-2025-openhw

# Installa dipendenze
npm install
```

### Build manuale

```bash
# Build HTML e PDF
npm run build

# Solo HTML
npm run build:html

# Solo PDF
npm run build:pdf

# Watch mode (ricompila automaticamente)
npm run watch

# Server locale con live reload
npm run serve
# Apri http://localhost:8080
```

### Build con script bash

```bash
# Usa lo script di build incluso
./build.sh
```

## 📦 Output

I file generati si trovano nella cartella `dist/`:
- `dist/slides.html` - Presentazione HTML standalone
- `dist/slides.pdf` - Presentazione PDF

## 🔧 Tecnologie utilizzate

- [Marp](https://marp.app/) - Framework per presentazioni da Markdown
- [Marp CLI](https://github.com/marp-team/marp-cli) - Tool command-line per Marp
- GitHub Actions - CI/CD automatico (opzionale)

## 📖 Progetto Angelo

Il **Progetto Angelo** è un amplificatore audio open hardware per persone con ipoacusia:

- **Costo**: ~15-20€ (componenti)
- **Certificazione**: [OSHWA IT000017](https://certification.oshwa.org/it000017.html)
- **Licenza**: CC-BY-SA 4.0
- **Sito ufficiale**: https://angelo-amplifica-emozioni.jimdosite.com
- **Progettista**: Luciano Fumagalli

### Caratteristiche tecniche
- Pre-amplificatore TL072 + amplificatore audio LM386
- Guadagno 49.6dB @ 1.5kHz, ottimizzato per frequenze del parlato
- Alimentazione 9V ricaricabile
- PCB 70x70mm (versioni TH e SMD)
- Custodia stampabile in 3D

## 🏢 FabLab Bergamo

- **Web**: https://www.fablabbergamo.it
- **Collaborazione**: BgLUG
- **Attività**: Workshop, corsi, progetti open hardware
- **Sede**: Bergamo, Italia

## 📄 Licenza

- **Presentazione**: CC-BY-SA 4.0 © 2025 Pascal Brunot, FabLab Bergamo
- **Progetto Angelo**: CC-BY-SA 4.0 © Luciano Fumagalli

## 🤝 Contributi

Contributi, suggerimenti e miglioramenti sono benvenuti! Apri una issue o pull request.

## 📧 Contatti

- **Presentatore**: Pascal Brunot
- **FabLab Bergamo**: https://www.fablabbergamo.it
- **Progetto Angelo**: https://angelo-amplifica-emozioni.jimdosite.com

---

**Linux Day 2025 - Bergamo**
*Diffondere il software (e hardware) libero*
