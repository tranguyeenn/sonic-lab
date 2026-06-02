use_bpm 128

live_loop :kick do
  sample :bd_tek, amp: 2.8
  sleep 1
end

live_loop :hat do
  sleep 0.5
  
  sample :drum_cymbal_closed,
    amp: 0.4,
    finish: 0.03,
    rate: 2
  
  sleep 0.5
end

live_loop :chords do
  use_synth :prophet
  
  progression = [
    chord(:e3,:minor),
    chord(:c3,:major),
    chord(:g3,:major),
    chord(:d3,:major)
  ]
  
  progression.each do |c|
    with_fx :reverb, room: 0.9 do
      play c,
        sustain: 4,
        release: 2,
        amp: 1.4
    end
    
    sleep 4
  end
end

live_loop :bass do
  sync :chords
  
  use_synth :fm
  
  [:e1,:c1,:g1,:d1].each do |n|
    4.times do
      play n,
        release: 0.2,
        amp: 1.7
      
      sleep 1
    end
  end
end

live_loop :pad do
  sync :chords
  
  use_synth :hollow
  
  with_fx :reverb, room: 1 do
    play :e5,
      sustain: 16,
      release: 4,
      amp: 0.5
  end
  
  sleep 16
end

live_loop :lead do
  sync :chords
  
  use_synth :dsaw
  
  with_fx :distortion, distort: 0.35 do
    with_fx :reverb, room: 0.7 do
      
      notes = [
        :e4,:e4,:e4,:e4,
        :g4,:e4,:d4,:e4,
        
        :b4,:g4,:e4,:g4,
        :b4,:d5,:b4,:g4
      ]
      
      notes.each do |n|
        play n,
          release: 0.18,
          amp: 2.2
        
        sleep 0.5
      end
      
    end
  end
end

live_loop :arp do
  sync :chords
  
  use_synth :blade
  
  with_fx :echo, phase: 0.25, mix: 0.3 do
    
    play_pattern_timed(
      [:e5,:g5,:b5,:g5],
      [0.25],
      amp: 0.6
    )
    
  end
end