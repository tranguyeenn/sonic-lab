use_bpm 145

live_loop :kick do
  sample :bd_haus, amp: 1.5
  sleep 1
  
end

live_loop :hat do
  sleep 0.5
  
  sample :drum_cymbal_closed,
    amp: 0.22,
    finish: 0.018,
    rate: 0.9
  
  sleep 0.5
  
end

live_loop :bassline do
  use_synth :fm
  
  with_fx :distortion, distort: 0.25 do
    with_fx :lpf, cutoff: 65 do
      notes = [:e1, :e1, :g1, :b1,
               :d1, :d1, :fs1, :a1,
               :c1, :c1, :e1, :g1,
               :b0, :b0, :d1, :fs1]
      
      play notes.tick,
        release: 0.35,
        amp: 1.8,
        depth: 3.5,
        divisor: 1.1
      
      sleep 0.5
      
    end
  end
end

live_loop :dark_undertone do
  use_synth :hollow
  with_fx :reverb, room: 1, mix: 0.85 do
    progression = [
      chord(:e3, :minor),
      chord(:d3, :major),
      chord(:c3, :major),
      chord(:b2, :minor)
    ]
    
    play progression.tick,
      attack: 0.4,
      sustain: 3.2,
      release: 1.5,
      amp: 0.42
    
    sleep 4
    
  end
end

live_loop :lower_melody do
  use_synth :prophet
  
  with_fx :echo, phase: 0.75, decay: 5, mix: 0.35 do
    with_fx :reverb, room: 0.85, mix: 0.45 do
      notes = [
        :e3, :g3, :fs3, :e3,
        :d3, :fs3, :a3, :fs3,
        :c3, :e3, :g3, :e3,
        :b2, :d3, :fs3, :d3
      ]
      
      play notes.tick,
        release: 0.25,
        cutoff: 72,
        amp: 0.45
      
      sleep 0.5
      
    end
  end
end

live_loop :haunted_topline do
  use_synth :blade
  
  with_fx :reverb, room: 1, decay: 6, mix: 0.45 do
    with_fx :echo, phase: 0.75, decay: 6, mix: 0.45 do
      notes = [
        :e4, :fs4, :g4,
        :d4, :b3, :c4,
        :fs4, :e4
      ]
      
      play notes.tick,
        release: 0.18,
        cutoff: 68,
        amp: 0.38
      
      sleep [1, 1, 2, 1].choose
      
    end
  end
end

live_loop :texture do
  sample :ambi_haunted_hum,
    rate: 0.25,
    amp: 0.38
  
  sleep 12
  
end

live_loop :dark_air do
  sample :ambi_glass_hum,
    rate: 0.35,
    amp: 0.18
  
  sleep 16
  
end

live_loop :undertone do
  use_synth :prophet
  
  with_fx :reverb, room: 0.8, mix: 0.4 do
    pattern = [
      :e3,:g3,:fs3,:e3,
      :d3,:fs3,:a3,:fs3,
      :c3,:e3,:g3,:e3,
      :b2,:d3,:fs3,:d3
    ]
    
    play pattern.tick,
      release: 0.4,
      cutoff: 75,
      amp: 2.5
    
    sleep 0.5
  end
end