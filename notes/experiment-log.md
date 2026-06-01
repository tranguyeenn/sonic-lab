# Experiment Log

A running record of Sonic Lab experiments — newest entries at the top.

For new entries, copy [`templates/experiment-template.md`](templates/experiment-template.md) or follow the format below.

---

## 2026-05-31

### Afterhours

**Goal:**

* Explore a dark, late-night electronic atmosphere — something between rave energy and haunted ambience
* Build a multi-layer track at 145 BPM with a driving rhythm section and harmonic depth underneath
* Develop melody lines that feel sparse and intentional rather than busy

**Changes:**

* Set foundation with `:bd_haus` kick and tight closed hat (`finish: 0.018`, low amp) for a clean pulse
* Built FM bassline (`:fm` synth) through distortion + LPF — notes follow Em–D–C–Bm root movement in the low register
* Added `:hollow` pad progression for harmonic undertone with heavy reverb (`room: 1, mix: 0.85`)
* Layered two melody voices: `:prophet` for lower melodic movement, `:blade` for sparse topline with variable timing
* Introduced ambient texture via `:ambi_haunted_hum` and `:ambi_glass_hum` at slow rates for background drift
* Added a second `:prophet` loop (`:undertone`) at higher amplitude to push presence in the mid range

**Observations:**

* The initial dark rave concept came together quickly once the kick-hat-bass triangle was locked in
* Melody development required separating concerns — lower `:prophet` pattern vs. upper `:blade` topline with `[1, 1, 2, 1].choose` timing
* The `:hollow` pad with long sustain (`sustain: 3.2`) creates a wash that holds the emotional tone without fighting the bass
* A brass/trumpet-like character emerged unexpectedly from the `:prophet` undertone loop — especially at `amp: 2.5` with `cutoff: 75`. Not the original intent, but it adds bite and forward motion in the mix
* Heavy reverb on multiple layers risks muddiness; the hat's minimal amplitude helps maintain clarity

**What Worked:**

* FM bass through distortion + LPF — gritty but controlled
* Four-chord progression (Em → D → C → Bm) gives clear harmonic direction without complexity
* Sparse topline with randomized note lengths feels more "haunted" than a steady eighth-note pattern
* Layering ambient samples at very low rates (`0.25`, `0.35`) adds depth without rhythmic competition
* The unexpected brass-like undertone character — worth exploring deliberately in a future experiment

**What Didn't:**

* Early attempts at busier melody felt cluttered against the bass — less is more here
* First undertone levels were too quiet to register; pushing amplitude revealed the character but needs careful balancing
* Too much reverb across all layers initially blurred the kick — had to keep percussion dry

**Next Steps:**

* Isolate the `:prophet` undertone sound — try different cutoff and release values for a more intentional brass/trumpet voice
* Experiment with sidechain-like volume ducking (manual amp automation) so the kick breathes through the undertone
* Try a dedicated `:experiments/` entry for just the dark harmonic progression — test in other keys
* Record a longer session render and note where energy dips or peaks over time

**Related code:** [`tracks/afterhours/afterhours.rb`](../tracks/afterhours/afterhours.rb)

---

<!-- Add new entries above this line, newest first -->
