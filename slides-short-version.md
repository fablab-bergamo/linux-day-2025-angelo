---
marp: true
theme: angelo
paginate: true
---

<!-- _class: lead -->

# Diffondere un progetto Open Hardware
Il caso di Angelo

Pascal Brunot – FabLab Bergamo
Linux Day 2025 – Bergamo

---

## Indice
- Perché serve Angelo
- Dalla sfida all’idea
- Angelo in 30 secondi
- Come funziona
- Funziona: 3 prove
- Usarlo bene e in sicurezza
- Cosa non è e chi fa cosa
- Replicare: 3 percorsi
- Impatto sociale già reale
- Prossime migliorie
- Perché la certificazione conta
- Provalo oggi e unisciti

---

## Perché serve Angelo
- Oltre 1,5 miliardi di persone convivono con ipoacusia nel mondo, con anziani più colpiti e costi elevati per soluzioni tradizionali.
- Barriere pratiche: prezzo, configurazione, manutenzione e accesso in aree a risorse limitate.

---

## Dalla sfida all'idea

![bg right:45%](immagini/angelo-luciano.png)

- Nel 2020 mascherine e distanziamento rendono difficile leggere il labiale, nasce l'idea di un amplificatore semplice e frugale per il suocero Angelo, 104 anni.
- Creatività di Luciano Fumagalli e collaborazione FabLab attivano una rete di "helper" multidisciplinare e internazionale.

---

## Angelo in 30 secondi

![bg right:40%](immagini/box-angelo.png)

- Dispositivo open, economico e replicabile con componenti da circa 15–20€ e documentazione completa.
- Due varianti (TH e SMD) e custodia stampabile 3D abilitano accessibilità e riuso in contesti educativi e sociali.

---

## Come funziona

![bg right:50%](immagini/lavagna.jpg)

- Flusso: microfono → filtro passa‑alto → preamplificatore → controllo volume → amplificatore → cuffie, ottimizzato per la voce.
- Componenti chiave: capsula 9,7 mm CMB‑6544PF, TL072 come preamp, LM386 come finale, alimentazione 9V con split‑rail.

---

## Funziona: 3 prove
- Guadagno massimo misurato: 49,6 dB a 1,5 kHz in banda del parlato, con risposta “a banana” centrata sulla voce.
- Stabilità elevata: margine di fase ~130° con accordo tra modello teorico, simulazioni LTSpice e test su banco.
- Consumo medio ~12 mA con autonomia indicativa ~54 ore su batteria 650 mAh, coerente con le specifiche componenti.

---

## Usarlo bene e in sicurezza
- Limite di riferimento: mantenere l’uscita entro ~120 dB SPL e prevedere riduzione rapida del volume da parte dell’utente.
- Cuffie compatibili: impedenza ≥24 Ω (consigliato 32 Ω) e sensibilità ≤96 dB, con esempi testati coerenti con i limiti.

---

## Cosa non è e chi fa cosa
- Non è un dispositivo medico, non sostituisce apparecchi professionali e non ha marcatura CE per uso commerciale.
- Ruoli: progettista rilascia “as‑is” con licenza open, FabLab valida e supporta in ambito educativo, utente usa consapevolmente con disclaimer.

---

## Replicare: 3 percorsi
- DIY completo: file pubblici, acquisto componenti e assemblaggio con supporto comunità e FabLab.
- Kit pre‑assemblato/testato per non esperti con manuale e limiti d’uso espliciti.
- Workshop educativo: studenti assemblano per nonni/familiari, con forte impatto formativo e sociale.

---

## Impatto sociale già reale
- Esempi: studenti per i propri nonni, adozione in RSA, scuole e biblioteche con riconoscimenti pubblici.
- La collaborazione internazionale e i premi rafforzano fiducia, visibilità e coinvolgimento della comunità.

---

## Prossime migliorie
- AGC: limitazione automatica per mitigare picchi SPL, validata in simulazione e test ma da ottimizzare.
- Protezione inversione polarità: P‑MOSFET e jumper di bypass già integrati e verificati in nuove revisioni.
- Miniaturizzazione: studio per form factor più tascabile, con connettori su PCB e migliore ergonomia.

---

## Perché la certificazione conta
- OSHWA attesta apertura reale: documentazione modificabile, libertà di studio/deriva/distribuzione e uso anche commerciale.
- Vantaggi: fiducia, visibilità nel database globale e uso del logo/UID per identificare progetti realmente open.

---

## Provalo oggi e unisciti

![bg right:35%](immagini/kit_angelo.jpg)

- Demo dal vivo, iscrizione ai workshop di assemblaggio e percorsi per portarlo in scuole o RSA locali.
- Obiettivo: diffusione sicura, educativa e sostenibile con supporto FabLab e comunità locale.

---

<!-- _class: lead -->

# Appendice tecnica
Backup per Q&A

---

## Processo PCB in sintesi
- Flusso: componenti → schema → layout → Gerber/fori → fabbricazione → assemblaggio → collaudo → assemblaggio finale.
- File necessari: Gerber, drill, pick‑and‑place e BOM per produzione e assemblaggio SMD/TH.

---

## Costi indicativi in piccola scala
- PCB 2‑layer economici con tempi rapidi, stencil e fee di setup contenuti per prototipazione.
- Esempio Angelo: 10 PCB nudi ~10–15€ e componenti ~15–20€ per unità, totale ~25–35€ a piccola scala.

---

## Specifiche operative e limiti
- Consumi tipici, comportamento in saturazione, casi estremi di feedback e mitigazioni operative nel manuale.
- Requisiti cuffie e procedure di verifica prima dell’uso inclusi nella documentazione utente.

---

## Risorse e contatti
- Documentazione: schemi, PCB, BOM, STL, manuale d’uso e relazione tecnica con licenza aperta.
- FabLab Bergamo: attività serali aperte, collaborazione comunitaria e supporto al debugging
