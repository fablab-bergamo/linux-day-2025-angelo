# Quick Start Guide

## Visualizzare la presentazione

### Opzione 1: File pre-generati (più veloce)

I file HTML e PDF sono già stati generati nella cartella `dist/`:

```bash
# Apri HTML in browser
firefox dist/slides.html
# oppure
chromium dist/slides.html

# Apri PDF
evince dist/slides.pdf
# oppure
okular dist/slides.pdf
```

### Opzione 2: Rigenerare da sorgente

Se hai modificato `slides.md` o vuoi rigenerare:

```bash
# Installa dipendenze (solo la prima volta)
npm install

# Build
npm run build

# Oppure usa lo script bash
./build.sh
```

## Modalità presentazione

### HTML (raccomandato)

1. Apri `dist/slides.html` in browser
2. Premi `F` per fullscreen
3. Usa frecce ←/→ per navigare
4. Premi `Esc` per uscire da fullscreen

### PDF

1. Apri `dist/slides.pdf` con lettore PDF
2. Usa modalità presentazione (F5 in molti lettori)
3. Frecce per navigare

## Modificare la presentazione

1. Modifica `slides.md` con il tuo editor preferito
2. Esegui `npm run watch` per auto-ricompilazione
3. Apri `dist/slides.html` in browser e ricarica

## Server locale con live reload

```bash
npm run serve
```

Poi apri http://localhost:8080 nel browser. Le modifiche si vedranno automaticamente.

## Comandi rapidi

```bash
npm run build        # Build HTML + PDF
npm run build:html   # Solo HTML
npm run build:pdf    # Solo PDF
npm run watch        # Auto-rebuild HTML
npm run serve        # Server locale con live reload
```

## Troubleshooting

### Errore "marp: command not found"

```bash
npm install
```

### PDF non si genera

Assicurati di avere Chrome/Chromium installato (usato da Marp per PDF):

```bash
# Ubuntu/Debian
sudo apt install chromium-browser

# Fedora
sudo dnf install chromium
```

### Modifiche non si vedono

1. Salva il file `slides.md`
2. Se usi `watch`: ricarica browser (Ctrl+R)
3. Se non usi `watch`: esegui `npm run build` di nuovo

## Pubblicazione su GitHub

```bash
# Inizializza git (se non già fatto)
git init

# Aggiungi file
git add .
git commit -m "Add Linux Day 2025 presentation"

# Aggiungi remote (sostituisci con il tuo repo)
git remote add origin https://github.com/YOUR-USERNAME/linux-day-2025-openhw.git

# Push
git branch -M main
git push -u origin main
```

### GitHub Pages (opzionale)

La GitHub Action in `.github/workflows/build.yml` automaticamente:
1. Builda la presentazione ad ogni push
2. Pubblica su GitHub Pages

Per abilitare GitHub Pages:
1. Vai su Settings → Pages nel tuo repo
2. Source: Deploy from a branch
3. Branch: `gh-pages` (sarà creato automaticamente)
4. La presentazione sarà disponibile su `https://YOUR-USERNAME.github.io/linux-day-2025-openhw/`

## Note

- La presentazione contiene **37 slide**
- Durata stimata: **60 minuti** (~1.5 min/slide)
- Formato: **16:9** (default Marp)
- Tema: **default** (può essere personalizzato in `slides.md`)
