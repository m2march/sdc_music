iois = [3, 1, 1, 1, 2, 1, 3]
total_length = iois.reduce(:+)

base = 3

use_bpm 220

live_loop :sync do
  cue :start
  sleep total_length
end

live_loop :base_beat do
  sync :start
  (total_length / base).times do
    play 60
    sleep base
  end
end

live_loop :upper_beat do
  sync :start
  iois.each { |s|
    play 70
    sleep s
  }
end