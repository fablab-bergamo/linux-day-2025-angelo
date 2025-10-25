---
marp: true
theme: angelo
paginate: true
---

<!-- _class: lead -->

# Diffondere un progetto Open Hardware

**Il caso di Angelo**

Pascal Brunot - FabLab Bergamo
Linux Day 2025 - Bergamo

---

## Agenda

1. **Introduzione**: Progetto Angelo e certificazione OSHWA
2. **Sfide alla replica**: sicurezza, normative, responsabilità
3. **Analisi tecnica**: modellazione, simulazione, verifica
4. **Approccio FabLab Bergamo** per la diffusione
5. **Miglioramenti possibili**: AGC, miniaturizzazione
6. **Conclusioni**: lezioni apprese e prossimi passi

---

<!-- _class: lead -->

# Parte 1
## Il Progetto Angelo

---

## Progetto Angelo: la storia

Il progetto Angelo nasce da una necessità reale: permettere ad Angelo, 105 anni e ipoacusico, di comunicare con i suoi cari nonostante le distanze imposte dalla pandemia.

Grazie alla creatività di **Luciano Fumagalli** e al FabLab, è stato sviluppato un amplificatore open, economico e replicabile da chiunque.

---

## Il viaggio dell'eroe: la storia di Angelo

**Maggio 2020 - La sfida**
- Angelo, suocero ipoacusico di 104 anni
- Riapertura RSA dopo lockdown
- Distanziamento sociale
- Labiale offuscato dalle mascherine

**L'idea di Luciano**
- Curiosità e pensiero laterale
- Serendipità: trovare soluzioni creative
- Un amplificatore per amplificare emozioni

---

## I Magical Helpers: chi ha reso possibile Angelo

**Collaborazioni internazionali:**
- Docenti e ricercatori di Boston (USA)
- Responsabile R&D RSA in Svezia
- Designer italiani in Danimarca
- Maker audiofilo, hub tecnologico, società di packaging
- Artista calligrafico, avvocati per licenza CC BY-SA 4.0

**Make Faire Roma 2024:**
- Finalista sezione "Make to Care"
- Premio "Maker of Merit" agli Elettronici Entusiasti (150.000+ follower)

**"Nella collaborazione divido lo sforzo, addiziono le competenze e moltiplico il risultato"**

---

## Certificazione OSHWA IT000017

**Cos'è OSHWA?**
Open Source Hardware Association - organizzazione internazionale che promuove e certifica l'open hardware.

**Progetto Angelo:**
- **Certificato**: IT000017 (Italia, numero 17)
- **Licenza**: CC-BY-SA 4.0
- **Logo ufficiale** utilizzabile sul progetto
- **Repository pubblico** con tutti i file

https://certification.oshwa.org/it000017.html

---

## I principi della definizione OSHWA

**Open Source Hardware Definition v1.0:**

1. **Documentazione** - design files, schemi, layout PCB pubblici
2. **Libertà** - di studiare, modificare, distribuire, fabbricare
3. **Software** - anche firmware e software devono essere open
4. **Formati aperti** - file modificabili (non solo PDF)
5. **No discriminazioni** - uso commerciale permesso
6. **Derivati** - modifiche devono restare open (share-alike)

**Non è richiesto:**
- Condividere strumenti di fabbricazione
- Fornire supporto tecnico
- Cedere marchi

---

## Perché certificarsi OSHWA?

**Vantaggi della certificazione:**
- ✅ **Riconoscimento internazionale** del progetto come veramente open
- ✅ **Fiducia** - gli utenti sanno che possono modificare/replicare
- ✅ **Visibilità** - database globale di progetti certificati (>2000 progetti)
- ✅ **Logo OSHWA** - utilizzabile su PCB, documentazione, packaging

**Processo di certificazione:**
- Gratuito e completamente online
- Auto-certificazione con UID univoco
- Community può segnalare non-conformità

---

## Open Source vs Open Hardware

**Similitudini:**
- ✅ Licenze permissive (modifiche, distribuzione, uso commerciale)
- ✅ Documentazione completa accessibile pubblicamente
- ✅ Comunità collaborativa

**Differenze fondamentali:**

| Aspetto | Open Source (Software) | Open Hardware |
|---------|----------------------|---------------|
| **Natura** | Digitale - copia istantanea | Fisica - fabbricazione necessaria |
| **Costi** | Distribuzione ~gratuita | Materiali e produzione costosi |
| **Competenze** | Programmazione (accessibile online) | Elettronica, saldatura, fab (+ costose) |
| **Protezione IP** | Copyright | Brevetti, design rights |

---

## Il processo di fabbricazione PCB

**1. Progettazione con strumenti EDA:**
- **KiCAD** (open source, gratuito) - usato per Angelo
- **Eagle** (Autodesk, commerciale)
- **Altium Designer** (professionale)

**Workflow completo:**
```
Schema elettrico → Layout PCB → File Gerber →
Fabbricazione → Assemblaggio componenti
```

**File necessari per produzione:**
- **Gerber files** - standard industria per layer PCB
- **Drill files** - posizione fori
- **Pick & Place (PnP)** - coordinate componenti SMD
- **Bill of Materials (BOM)** - lista componenti

---

## Costi di fabbricazione: JLCPCB

**PCB nudi (solo scheda):**
- Prototipo 5 pz (100x100mm, 2 layer): **~2-5 USD** + spedizione
- Tempo produzione: 24-48 ore

**Assemblaggio SMD (PCB + saldatura componenti):**
- Setup fee: ~3-8 USD (una tantum per design)
- Stencil saldatura: 7-10 USD
- Componenti: costo variabile (catalogo JLCPCB o custom)
- Assemblaggio manuale: ~0.008 USD/punto saldatura

**Esempio Angelo (70x70mm, TH):**
- 10 PCB nudi: ~10-15 EUR (spedizione inclusa)
- Componenti: ~15-20 EUR (se acquistati separatamente)
- **Totale dispositivo**: 25-35 EUR per unità (piccola scala)

**Vantaggi:** economico per prototipi, qualità professionale, turnaround veloce

---

## Il problema dell'ipoacusia

**Dimensioni del problema:**
- Oltre 1,5 miliardi di persone nel mondo soffrono di ipoacusia
- In Italia, oltre il 12% della popolazione (7+ milioni di persone)
- Gli anziani sono i più colpiti

**Barriere esistenti:**
- Apparecchi acustici tradizionali: centinaia/migliaia di euro
- Complessità di configurazione e manutenzione
- Accesso limitato in paesi a risorse limitate

---

## La soluzione Angelo

**Open Hardware come risposta:**
- Costo componenti: circa 15-20 euro
- Documentazione completa e libera
- Replicabile da chiunque con competenze base

**Caratteristiche principali:**
- Amplificatore audio equalizzato per frequenze del parlato
- Alimentazione 9V ricaricabile
- Custodia stampabile in 3D
- Due versioni: componenti a foro passante (TH) e SMD

---

<!-- _class: lead -->

# Parte 2
## Sfide alla replica del progetto

---

## Sfida 1: Sicurezza elettrica

**Problemi identificati:**
- Tensioni massime in uscita potenzialmente dannose (>120dB SPL)
- Rischio di inversione di polarità della batteria
- Guasti osservati: transistor Q2 bruciati per inversione polarità
- Feedback acustico (effetto Larsen) se microfono vicino a cuffie

**Necessità di:**
- Analisi tecnica approfondita prima della diffusione
- Validazione dei limiti di sicurezza
- Protezioni hardware aggiuntive

---

## Sfida 2: Normative e conformità

**Quadro normativo:**
- Il dispositivo **non è un dispositivo medico** certificato
- Non sostituisce apparecchi acustici professionali
- Destinato a uso personale, non commerciale

**Limitazioni legali:**
- Mancanza di marcatura CE come dispositivo medico
- Assenza di certificazione secondo direttive EU MDR
- Non può essere venduto come dispositivo medico

**Approccio adottato:**
- Diffusione come progetto educativo/DIY
- Disclaimer chiari su limitazioni e uso

---

## Sfida 3: Responsabilità

**Chi è responsabile?**

**Progettista (Luciano Fumagalli):**
- Condivide progetto "as-is" con licenza CC-BY-SA 4.0
- Disclaimer: nessuna garanzia implicita o esplicita

**FabLab Bergamo:**
- Fornisce assistenza tecnica e educativa
- Analisi di sicurezza pre-assemblaggio
- Manuale d'uso con limitazioni chiare

**Utente finale:**
- Si assume la responsabilità dell'uso
- Deve comprendere funzionamento e limitazioni
- Capacità motorie/cognitive per regolare volume autonomamente

---

## Sfida 4: Barriere alla replica

**Ostacoli pratici:**
- Competenze necessarie: elettronica base, saldatura
- Strumenti: saldatore, multimetro, stampante 3D
- Approvvigionamento componenti (microelettronica)
- Assemblaggio PCB (versione TH più accessibile)

**Ruolo dei FabLab:**
- Abbassare barriere fornendo strumenti e competenze
- Workshop di assemblaggio guidato
- Supporto tecnico per debugging

---

<!-- _class: lead -->

# Parte 3
## Analisi tecnica del progetto

---

## Schema a blocchi

**Architettura del circuito:**

```
Microfono → Filtro passa-alto → Pre-amplificatore →
Potenziometro volume → Amplificatore audio → Cuffie
```

**Componenti chiave:**
- Capsula microfonica 9.7mm (CMB-6544PF)
- Pre-amplificatore: TL072 (op-amp)
- Amplificatore audio: LM386 (classe AB)
- Alimentazione simmetrica (split-rail) da batteria 9V

---

## Modellazione e simulazione

**Approccio metodologico:**
1. **Modello teorico** - funzioni di trasferimento per ogni stadio
2. **Simulazione LTSPICE** - validazione con 3 modelli
3. **Verifica sperimentale** - test con oscilloscopio

**Risultati chiave:**
- Guadagno massimo: **49.6 dB a 1.5 kHz** (frequenza del parlato)
- Margine di fase: **130°** → sistema estremamente stabile
- Risposta in frequenza "a banana" - ottimizzata per voce umana
- Accordo eccellente tra teoria, simulazione ed esperimenti

---

## Verifica sperimentale

**Test effettuati (dispositivo FABLAB_0010):**

**1. Consumi elettrici:**
- Media: 12 mA → autonomia ~54 ore con batteria 650mAh

**2. Comportamento in saturazione:**
- Volume massimo: ~118 dB SPL (funzionamento normale)
- Conforme ai datasheet dei componenti

**3. Feedback acustico (effetto Larsen):**
- Caso estremo (microfono a 1cm dalle cuffie): può raggiungere 120 dB
- **Requisito critico**: utente deve poter abbassare volume rapidamente

**Conclusione:** necessaria analisi sicurezza prima della diffusione

---

## Limiti di sicurezza determinati

**Standard di riferimento:**
- Massimo raccomandato: **120 dB SPL** (letteratura ASHA)

**Raccomandazioni per le cuffie:**
- Impedenza: **≥ 24 Ω** (consigliato 32 Ω)
- Sensibilità: **≤ 96 dB**
- Modello testato: Sony MDR-ZX110 (24Ω, 98dB) → **conforme**

**Inserito nel manuale d'uso:**
- Specifiche tecniche cuffie compatibili
- Istruzioni per verifica prima dell'uso
- Disclaimer su rischi e limitazioni

---

<!-- _class: lead -->

# Parte 4
## Approccio FabLab Bergamo

---

## Strategia di diffusione

**Obiettivo:**
Diffondere il progetto Angelo in modo **sicuro**, **educativo** e **sostenibile**

**Approccio adottato:**
1. Analisi tecnica approfondita (Aprile-Giugno 2025)
2. Validazione sicurezza pre-assemblaggio
3. Creazione manuale d'uso e manutenzione
4. Workshop di assemblaggio guidato
5. Pre-assemblaggio kit per utenti non esperti

---

## Attività realizzate dal FabLab

**1. Analisi di sicurezza:**
- Modellazione matematica completa
- Simulazioni LTSPICE
- Prove sperimentali con oscilloscopio
- Determinazione limiti sicuri (cuffie, volume)

**2. Documentazione:**
- Relazione tecnica completa (RelazioneANGELO.pdf)
- Manuale d'uso con disclaimer e limitazioni
- Istruzioni di assemblaggio

**3. Supporto alla comunità:**
- Workshop assemblaggio
- Debugging e riparazioni
- Formazione su saldatura e test

---

## Modello di distribuzione

**Opzione 1 - DIY completo:**
- Utente scarica file da sito ufficiale
- Acquista componenti autonomamente
- Assembla con supporto FabLab (se necessario)

**Opzione 2 - Kit pre-assemblato:**
- FabLab assembla e testa dispositivi
- Fornisce manuale d'uso
- Utente finale riceve dispositivo funzionante
- **Target**: anziani, case di riposo, scuole

**Opzione 3 - Workshop educativo:**
- Studenti assemblano per nonni/familiari
- Apprendimento competenze elettroniche
- Impatto sociale e intergenerazionale

---

## Gestione responsabilità

**Disclaimer nel manuale:**
- Non è un dispositivo medico certificato
- Non sostituisce apparecchi acustici professionali
- Uso a proprio rischio
- Utente deve verificare compatibilità cuffie
- Capacità di regolare volume autonomamente richiesta

**Processo di consegna:**
- Spiegazione funzionamento e limitazioni
- Dimostrazione regolazione volume
- Verifica comprensione utente
- Firma ricevuta con disclaimer

---

## Impatto sociale realizzato

**Risultati fino ad oggi:**
- Assemblato da studenti per propri nonni
- Distribuito in case di riposo, scuole, biblioteche
- Finalista a Maker Faire Roma
- Riconoscimenti e visibilità mediatica

**Valore aggiunto:**
- Connessioni umane e intergenerazionali
- Formazione tecnica per studenti
- Dimostrazione pratica di Open Hardware sociale

---

<!-- _class: lead -->

# Parte 5
## Miglioramenti possibili

---

## Miglioramento 1: AGC (Automatic Gain Control)

**Problema:**
Volume massimo può raggiungere 120 dB in condizioni estreme

**Soluzione proposta:**
- Circuito AGC con 4 diodi, 3 condensatori, 1 resistenza
- Limita Vout a ~0.6V picco-a-picco
- Riduce SPL massimo di ~18 dB

**Risultati simulazione:**
- Input 50mV → Output 114.9 dB (vs 119.2 dB senza AGC)
- THD: 3.9% (distorsione accettabile)

**Stato:**
- Testato sperimentalmente (SN: FABLAB_0010)
- Funzionante, ma richiede ottimizzazione
- Problemi: oscillazioni a bassa frequenza con alcuni diodi

---

## Miglioramento 2: Protezione inversione polarità

**Problema:**
- Guasti osservati: N°2 Q2 bruciati per inversione polarità batteria
- Esistono due tipi di connettori JH 9V con polarità diverse

**Soluzione implementata:**
- P-MOSFET BS250 o IRF9620 (Rdson < 2Ω)
- Jumper JP1 per bypass (debugging)
- Testato ad Agosto 2025 con successo

**Benefici:**
- Protezione completa contro inversione
- Costo aggiunto: ~1 euro
- Già integrato in nuove versioni

---

## Miglioramento 3: Miniaturizzazione

**Versione attuale:**
- PCB 70x70mm (entrambe versioni TH e SMD)

**Obiettivo futuro:**
- PCB 50x40mm (o 115x30mm forma "sigaretta elettronica")
- Batteria integrata longitudinalmente
- Connettori saldati direttamente su PCB

**Vantaggi:**
- Dispositivo tascabile
- Riduzione costi assemblaggio (no cavo batteria)
- Migliore ergonomia

**Stato:**
- Studio di fattibilità completato
- Implementazione futura

---

## Miglioramento 4: Altre evoluzioni

**Versione Bluetooth:**
- Integrazione con cuffie wireless
- Eliminazione cavi
- Maggiore libertà di movimento

**Alimentazione solare:**
- Per contesti a risorse limitate
- Autonomia estesa
- Sostenibilità ambientale

**Miglioramenti audio:**
- Cancellazione feedback acustico
- Equalizzazione personalizzabile
- Dual-channel processing

---

<!-- _class: lead -->

# Conclusioni

---

## Lezioni apprese

**1. Open Hardware ≠ Semplice diffusione**
- Serve analisi tecnica rigorosa
- Validazione sicurezza è essenziale
- Documentazione chiara e completa necessaria

**2. Responsabilità condivisa**
- Progettista: fornisce design "as-is"
- FabLab: validazione e supporto educativo
- Utente: comprensione e uso consapevole

**3. Normative sono una sfida reale**
- Dispositivi sanitari richiedono certificazioni costose
- Open Hardware DIY rimane in zona grigia
- Disclaimer e educazione sono fondamentali

---

## Il valore dell'Open Hardware sociale

**Angelo dimostra che:**
- Tecnologia open può risolvere problemi sociali reali
- Costo ridotto (15-20€) vs commerciale (centinaia €)
- Comunità può validare e migliorare progetti
- FabLab sono ponte tra teoria e pratica

**Ma anche:**
- Serve rigore scientifico nella diffusione
- Sicurezza non è opzionale
- Documentazione tecnica è parte integrante del progetto

---

## Prossimi passi

**A breve termine:**
1. Finalizzazione manuale d'uso
2. Workshop di assemblaggio pubblici
3. Distribuzione kit pre-assemblati a case di riposo

**A medio termine:**
1. Implementazione AGC ottimizzato
2. Miniaturizzazione PCB (v4.0)
3. Versione Bluetooth

**A lungo termine:**
1. Standardizzazione processo di validazione per progetti Open HW sanitari
2. Collaborazione con enti normativi
3. Diffusione modello FabLab per altri progetti sociali

---

## Risorse e contatti

**Progetto Angelo:**
- Sito ufficiale: https://angelo-amplifica-emozioni.jimdosite.com
- Certificazione OSHWA: https://certification.oshwa.org/it000017.html
- File di progetto: Google Drive (link su sito)

**FabLab Bergamo:**
- Web: https://www.fablabbergamo.it
- Collaborazione con BgLUG
- Incontri serali aperti a tutti

**Documentazione tecnica:**
- Relazione tecnica completa disponibile
- Schemi elettrici, PCB, BOM, STL files
- Licenza CC-BY-SA 4.0

---

<!-- _class: lead -->

# Grazie!

**Domande?**

---

**Vieni a trovarci oggi pomeriggio dalle 14:30**

Scopri da vicino:
- Demo del dispositivo Angelo
- Altri progetti Open Hardware
- Strumenti del FabLab (stampanti 3D, laser cutter, elettronica)
- La nostra community

**Le porte sono aperte: la tecnologia è davvero di tutti!**

---
