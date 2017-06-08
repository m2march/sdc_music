use_bpm 80

def lin_seq(start, stop, step_num)
  dist = stop - start
  step = dist / step_num.to_f
  Array.new(step_num){ |idx| 
    if idx < step_num - 1
      start + step * idx
    else
      stop
    end
  }
end

step_num = 20
c_to_r_first_delay = lin_seq(0.66, 0.75, step_num) 
c_to_r_second_delay = lin_seq(0.33, 0.5, step_num)
r_to_c_first_delay = lin_seq(0.75, 0.66, step_num)
r_to_c_second_delay = lin_seq(0.5, 0.33, step_num)

first_delay = [c_to_r_first_delay.first] * 10 + c_to_r_first_delay + [c_to_r_first_delay.last] * 10 + r_to_c_first_delay
second_delay = [c_to_r_second_delay.first] * 10 + c_to_r_second_delay + [c_to_r_second_delay.last] * 10 + r_to_c_second_delay

if true
live_loop :chaca do
  fd = (ring first_delay).tick
  sd = (ring second_delay).tick
  sample :drum_cymbal_closed
  sleep fd
  sample :drum_bass_soft
  sleep 1 - fd
  sample :drum_cymbal_closed
  sleep sd
  sample :drum_bass_soft
  sleep 1 - sd
end
end
