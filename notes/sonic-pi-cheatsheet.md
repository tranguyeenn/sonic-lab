# Sonic Pi Cheatsheet

Personal quick-reference for Sonic Lab. Not exhaustive — these are the tools and patterns that show up most often in this repository.

---

## Setup

```ruby
use_bpm 120          # Set tempo
use_synth :prophet   # Choose synth for following play calls
```

---

## Common Synths

| Synth | Character | Good For |
|---|---|---|
| `:fm` | Bright, harmonic, can be aggressive | Basslines, edgy leads |
| `:prophet` | Warm, analog-style, slightly brassy | Melody, undertone, pads |
| `:blade` | Saw-based, sharp, cutting | Toplines, lead lines |
| `:hollow` | Soft, airy, sustained | Pads, ambient chords |
| `:dark_ambience` | Textural, atmospheric | Ambient layers, lo-fi |
| `:organ_tonewheel` | Classic organ tone | Chords, lo-fi texture |
| `:beep` | Simple sine-like | Minimal tests, bleeps |
| `:dsaw` | Detuned saw | Thick leads, bass |

**Lab favorites:** `:fm` for bass, `:prophet` for melodic warmth, `:hollow` for pads, `:blade` for sparse toplines.

---

## Common Effects

| Effect | Key Params | Use Case |
|---|---|---|
| `:reverb` | `room:`, `mix:`, `decay:` | Space, depth, ambience |
| `:echo` | `phase:`, `decay:`, `mix:` | Rhythmic repeats, delay |
| `:lpf` | `cutoff:` | Darken sound, tame highs |
| `:hpf` | `cutoff:` | Remove mud, thin out |
| `:distortion` | `distort:` | Grit, saturation, edge |
| `:bitcrusher` | `bits:`, `sample_rate:` | Lo-fi degradation |
| `:panslicer` | `phase:`, `mix:` | Movement, stereo width |
| `:slicer` | `phase:`, `mix:` | Rhythmic gating |

**Common chains:**

```ruby
# Dark bass
with_fx :distortion, distort: 0.25 do
  with_fx :lpf, cutoff: 65 do
    play :e1
  end
end

# Spacious melody
with_fx :echo, phase: 0.75, decay: 5, mix: 0.35 do
  with_fx :reverb, room: 0.85, mix: 0.45 do
    play :e4
  end
end
```

---

## Drum Samples

| Sample | Role |
|---|---|
| `:bd_haus` | Four-on-the-floor kick |
| `:bd_tek` | Punchy electronic kick |
| `:drum_cymbal_closed` | Hi-hat — use `finish:` to shorten |
| `:drum_cymbal_open` | Open hat accents |
| `:drum_snare_soft` | Soft snare |
| `:loop_amen` | Breakbeat loops |
| `:ambi_haunted_hum` | Dark ambient texture |
| `:ambi_glass_hum` | Glassy ambient layer |
| `:ambi_sauna` | Subtle background texture |

**Hat tip:** Shorten cymbals with `finish: 0.018` and lower `amp` for tight, minimal hats.

```ruby
sample :drum_cymbal_closed, amp: 0.22, finish: 0.018, rate: 0.9
```

---

## Useful Code Patterns

### Live Loop

```ruby
live_loop :name do
  play :c4
  sleep 1
end
```

### Tick Through a Ring

```ruby
notes = [:e3, :g3, :fs3, :e3]
play notes.tick
sleep 0.5
```

### Random Choice

```ruby
play scale(:c4, :major_pentatonic).choose
sleep [0.25, 0.5, 1].choose
```

### Probabilistic Trigger

```ruby
play :c5 if one_in(3)   # 1-in-3 chance
```

### Chord Progression

```ruby
progression = [
  chord(:e3, :minor),
  chord(:d3, :major),
  chord(:c3, :major),
  chord(:b2, :minor)
]
play progression.tick, release: 2
sleep 4
```

### Scale

```ruby
scale(:c4, :major)
scale(:c4, :minor_pentatonic)
scale(62, :minor_pentatonic)   # MIDI note number
```

---

## BPM Tips

| Range | Feel | Examples in Lab |
|---|---|---|
| 60–80 | Slow, ambient, lo-fi | — |
| 90–110 | Downtempo, hip-hop | — |
| 120–128 | House, pop energy | — |
| 130–150 | Driving, rave, techno | `afterhours` at 145 |

- Halving or doubling BPM changes feel dramatically — try the same pattern at 70 and 140
- `sleep` values are in beats, not seconds — they scale with `use_bpm`
- At higher BPM, shorten `release` times to avoid overlap

---

## Melody Patterns

### Stepwise motion (smooth)

```ruby
notes = [:e3, :g3, :fs3, :e3, :d3, :fs3, :a3, :fs3]
```

### Sparse topline (breathing room)

```ruby
notes = [:e4, :fs4, :g4, :d4, :b3, :c4, :fs4, :e4]
sleep [1, 1, 2, 1].choose   # variable note lengths
```

### Generative (random from scale)

```ruby
play scale(:c4, :major_pentatonic).choose, release: 0.3
sleep rrand(0.25, 1)
```

### Octave doubling (adds richness)

```ruby
n = :c4
play n, release: 0.3
play n + 12, release: 0.2, amp: 0.25 if one_in(3)
```

---

## Chord Progression Examples

| Progression | Chords | Mood |
|---|---|---|
| I–V–vi–IV | C – G – Am – F | Bright, familiar |
| vi–IV–I–V | Am – F – C – G | Emotional pop |
| i–VII–VI–VII | Em – D – C – Bm | Dark, descending (Afterhours) |
| i–iv–V | Am – Dm – E | Minor tension |
| ii–V–I | Dm – G – C | Jazz resolution |

```ruby
# Dark minor (Afterhours-style)
[chord(:e3, :minor), chord(:d3, :major), chord(:c3, :major), chord(:b2, :minor)]
```

---

## Quick Debugging

- **Too loud / clipping:** Lower `amp` — start around 0.3–0.5 for melodic layers
- **Muddy mix:** Reduce reverb `mix`, raise `cutoff` on LPF, keep kick/hat dry
- **Timing feels off:** Check that all `sleep` values add up consistently within each loop
- **Nothing plays:** Make sure `live_loop` has a matching `sleep` — empty loops stall

---

*Add to this sheet when you discover something worth remembering.*
