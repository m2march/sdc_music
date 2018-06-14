## 7.5_3
use_bpm 100

times_a = [
  0.75, 0.25 + 0.5, 0.5, 1, 1,
  0.66, 0.66, 0.68, 1, 1
]
times_b = [
  0.5, 1, 0.5, 0.66, 0.66, 0.68,
  0.5, 0.25, 0.25, 0.25, 0.25, 0.5, 0.66, 0.66, 0.68
]

live_loop :mel do
  sleep 4
  2.times do
    times_a.each { |t|
      sample :drum_cowbell
      sleep t
    }
  end
  2.times do
    times_b.each { |t|
      sample :drum_cowbell
      sleep t
    }
  end
end

live_loop :beat do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_cymbal_closed
  sleep 1
  sample :drum_cymbal_closed
  sleep 1
  sample :drum_cymbal_closed
  sleep 1
end
