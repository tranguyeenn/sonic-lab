use_bpm 120

live_loop :chords do
  use_synth :organ_tonewheel
  progression = [
    chord(:c4, :major),
    chord(:g4, :major),
    chord(:a4, :minor),
    chord(:f4, :major)
  ]
  
  play progression.tick,
    release: 2,
    amp: 0.8
  sleep 2
end

live_loop :bass do
  use_synth :fm
  notes = [:c2, :g2, :a2, :f2]
  
  play notes.tick, release: 0.4, amp: 0.6
  sleep 0.5
end

live_loop :melody do
  use_synth :blade
  
  notes = scale(:c4, :major_pentatonic)
  
  n = notes.choose
  
  play n, release: 0.3, amp: 0.5
  play n + 12, release: 0.2, amp: 0.25 if one_in(3)
  
  sleep [0.25, 0.5].choose
end

live_loop :kick do
  sample :bd_haus, amp: 0.8
  sleep 1
end