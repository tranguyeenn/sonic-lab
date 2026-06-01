# Notes

This folder is the laboratory notebook for Sonic Lab — a place to write down what happens when code meets sound.

It is not developer documentation. It is not a user manual. It is a creative and technical journal: observations from the bench, half-formed ideas, things that surprised you, and things that did not work at all.

---

## Why Keep Notes?

Code captures *what* you built. Notes capture *why* you built it, *what you noticed*, and *where to go next*.

Without notes, experiments blur together. You forget which synth setting created that accidental warmth. You repeat the same dead end twice. You lose the reasoning behind a parameter choice that took an hour to find.

Writing things down slows you down just enough to think — and that friction is useful in a lab.

---

## Failed Experiments Are Still Valuable

Not every script produces something you'd want to listen to twice. That is expected.

A rhythm that falls apart can still teach you about timing. A melody that feels wrong can still reveal something about interval choice. A synth patch that clips unpleasantly might be one parameter away from something interesting.

The log is not a highlight reel. Document the failures with the same care as the successes. Often, the failure is the more instructive entry.

---

## How Notes Connect to the Repository

| Location | Role |
|---|---|
| `tracks/` | More complete pieces — the musical artifact |
| `experiments/` | Small, isolated tests — one idea at a time |
| `notes/` | The thinking behind all of the above |

When you start something new in `experiments/` or `tracks/`, consider opening an entry in [`experiment-log.md`](experiment-log.md) or copying [`templates/experiment-template.md`](templates/experiment-template.md). When an idea has no code yet, put it in [`ideas.md`](ideas.md). When you need a quick Sonic Pi reminder, check [`sonic-pi-cheatsheet.md`](sonic-pi-cheatsheet.md).

The code and the notes are two halves of the same experiment.

---

## Observations Guide Future Work

Patterns emerge over time if you write them down:

- Synths that consistently work for a given role (bass, pad, lead)
- Effect chains that add depth without muddying the mix
- BPM ranges where certain genres feel natural
- Randomization techniques that sound intentional vs. chaotic

Reviewing old entries before starting a new piece often saves time. The notebook becomes a map of where you've been — and a sketch of where you might go.

---

## Files in This Folder

| File | Purpose |
|---|---|
| [`experiment-log.md`](experiment-log.md) | Running chronological log of experiments |
| [`sonic-pi-cheatsheet.md`](sonic-pi-cheatsheet.md) | Personal quick-reference for Sonic Pi |
| [`ideas.md`](ideas.md) | Brain-dump for future concepts |
| [`templates/experiment-template.md`](templates/experiment-template.md) | Reusable template for new entries |

Keep it lightweight. A few honest sentences beat a long form nobody reads.

---

*Write while it's fresh. Be specific. Trust that curiosity compounds.*
