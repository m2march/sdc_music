r1 = [1, 1, 0.5, 0.5, 1]
r2 = [0.5, 0.5, 0.5, 0.5, 1, 1]
r3 = [1, 1.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 1, 1]
r4 = [0.5, 0.5, 0.5, 1, 0.5, 0.5, 1.5, 1, 0.5, 1.5]
r5 = [0.5, 0.5, 0.5, 1, 0.5, 0.5, 1.5 + 1 + 0.5 + 1.5]


def play_phrase(p)
  p.each { |s|
    sample :bd_haus
    sleep s
  }
end

use_bpm 160

live_loop :r do
  
  2.times do
    play_phrase(r1)
    play_phrase(r1)
    play_phrase(r1)
    play_phrase(r2)
  end
  
  play_phrase(r3)
  play_phrase(r3)
  play_phrase(r3)
  play_phrase(r3)
  
  play_phrase(r4)
  play_phrase(r4)
  play_phrase(r4)
  play_phrase(r5)
  
end

  live_loop :b do
if true
    sample :drum_bass_hard
    sleep 1
    sample :drum_cymbal_open
    sleep 1
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_cymbal_closed
    sleep 1
  end
end