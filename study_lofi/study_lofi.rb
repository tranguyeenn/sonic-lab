use_bpm 68

live_loop :texture do
  use_synth :organ_tonewheel
  with_fx :reverb, room: 0.7, mix: 0.4 do
    play [60, 62, 65, 67].choose,
      release: 1.8,
      amp: 0.4,
      pan: rrand(-0.3, 0.3)
    sleep 1
  end
end

live_loop :drops do
  sample :ambi_sauna, amp: 0.02
  sleep 8
end

live_loop :melody do
  use_synth :dark_ambience
  with_fx :reverb, room: 0.9, mix: 0.7 do
    play scale(62, :minor_pentatonic).choose,
      release: 1.5,
      amp: 0.3,
      cutoff: rrand(70, 110)
    sleep rrand(1.5, 3)
  end
end

live_loop :warmth do
  use_synth :hollow
  with_fx :reverb, room: 0.8, mix: 0.5 do
    play chord(60, :add9),
      attack: 2,
      release: 6,
      amp: 0.3,
      cutoff: rrand(70, 100)
    sleep 6
  end
end