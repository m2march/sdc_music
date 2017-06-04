use_bpm 80

live_loop :melo do
  use_synth :piano
  with_fx :reverb do
    [:c3, :eb3, :ab3, :f3].each do |n|
      4.times do
        play n
        sleep 0.25
      end
    end
  end
end

live_loop :bateria do
  sample :drum_heavy_kick, amp: 2
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_heavy_kick, amp: 2
  sleep 0.5
end