# Sonic Lab

A personal creative coding laboratory built around [Sonic Pi](https://sonic-pi.net/). This is not a music production platform, DAW, or software product — it is a workspace for testing ideas at the intersection of programming, music theory, and sound.

Experiments live here as scripts, sketches, and occasional audio renders. Some pieces work. Many do not. Both outcomes are useful.

---

## Overview

Sonic Lab exists to explore how code can generate, shape, and organize sound. Each entry is a small investigation: a rhythm pattern, a harmonic progression, a synth timbre, a generative melody — tested in Ruby through Sonic Pi's live-coding environment.

The repository is organized like a research notebook. Scripts are the primary artifact. Audio files, when present, are snapshots of a particular run — not polished releases.

**Why this exists:** to learn music programming by doing, to document what works (and what does not), and to build intuition for computational creativity through repeated experimentation.

---

## Goals

- Learn music programming through hands-on Sonic Pi scripting
- Explore computational creativity and generative composition
- Explore melody generation from first principles
- Experiment with electronic music structures and genre conventions
- Document findings, observations, and dead ends along the way

---

## Repository Structure

```
sonic-lab/
├── experiments/          # Small, focused tests — one idea per script
├── tracks/               # More complete pieces with multiple layered live loops
├── notes/                # Written observations, theory notes, experiment logs
├── assets/               # Rendered audio exports and reference material
└── README.md
```

| Folder | Purpose |
|---|---|
| `experiments/` | Quick prototypes: a synth patch, a randomization technique. Subfolders (e.g. `edm/`) group related trials; WAV renders can sit next to the script. |
| `tracks/` | Multi-layer compositions that attempt a coherent musical idea, even if rough. |
| `notes/` | Lab journal entries: what was tried, what was learned, parameters worth revisiting. |
| `assets/` | WAV renders and other audio output from Sonic Pi recording sessions. |

---

## Experiment Philosophy

This is a laboratory, not a product.

- **Not every experiment succeeds.** Failed attempts are kept when they teach something.
- **Some tracks are rough prototypes.** Layering, mix balance, and arrangement are secondary to the underlying idea.
- **The purpose is learning and exploration.** A script that produces one interesting bar is more valuable than a polished loop with nothing new in it.
- **Unexpected results are considered valuable.** Glitches, odd timings, and accidental harmonies often point toward the next experiment.

---

## Featured Experiments

### EDM Trial (in progress)
`experiments/edm/edm-trial.rb`

A big-room EDM sketch at 128 BPM — kick, hats, prophet chords, FM bass, hollow pad, distorted `:dsaw` lead, and echoed `:blade` arp. Inspired by Martin Garrix’s festival energy; still fixing levels, sync, and arrangement. Treat it as a live experiment, not a finished track.

Render: `experiments/edm/edm-trial.wav`

### Afterhours
`tracks/afterhours/afterhours.rb`

A dark electronic piece at 145 BPM exploring layered live loops: FM bass, hollow pad progressions, blade and prophet synth lines, and ambient texture samples. Investigates minor-key harmonic movement, distortion/LPF chains, and sparse topline melody over a steady kick-and-hat rhythm.

Render: `assets/afterhours.wav`

---

## Tech Stack

| Tool / Concept | Role |
|---|---|
| [Sonic Pi](https://sonic-pi.net/) | Live-coding music environment — the primary runtime |
| Ruby | Language for all scripts (`live_loop`, `play`, `sample`, `with_fx`, etc.) |
| Music Theory | Scales, chords, progressions, harmonic movement — expressed as code |
| Creative Coding | Randomization, pattern ticks, probabilistic choices, generative systems |

---

## Learning Focus

Current areas of investigation:

- **Pattern generation** — `tick`, ring buffers, Euclidean-style spacing, probabilistic triggers
- **Repetition and variation** — loops that evolve subtly without losing identity
- **Harmonic movement** — chord progressions, voice leading, tension and release
- **Synth selection** — matching timbre to role (bass, pad, lead, texture)
- **Effects processing** — reverb, echo, LPF, distortion as compositional tools
- **Experimental composition** — letting process and randomness participate in the result

---

## Getting Started

1. Install [Sonic Pi](https://sonic-pi.net/) for your operating system.
2. Open any `.rb` file from this repository in the Sonic Pi editor.
3. Press **Run**. Live loops continue until you press **Stop**.
4. To capture audio, use Sonic Pi's built-in recording. Save track renders to `assets/`; experiment renders can live beside the script (e.g. `experiments/edm/edm-trial.wav`).

No build step, no dependencies beyond Sonic Pi itself.

---

## Future Directions

Possible areas for continued exploration:

- Generative systems with evolving state and memory
- Algorithmic composition beyond simple random selection
- Procedural soundscapes and long-form ambient structures
- Genre explorations (techno, ambient, lo-fi, minimal) as structured learning paths
- Interactive music experiments responding to external input or live parameters

---

## License & Context

This is a personal lab. Code is shared for curiosity and learning, not as production-ready software. Use, adapt, and experiment freely.

---

*Sonic Lab — programming, music, experimentation, and curiosity.*
