# Ejemplos post contexto armónico

c1 = chord :c4, :M
c2 = chord :d4, :m
c3 = chord :e4, :m
c4 = chord :f4, :M
c5 = chord :g4, :M
c6 = chord :a4, :m
cb7 = chord :bb4, :M
c7 = chord :b4, :dim

live_loop :chord_loop do
  with_fx :reverb do
    use_synth :piano
    use_synth_defaults sustain: 3, amp: 2
    play_chord c1
    sleep 1
  end
end