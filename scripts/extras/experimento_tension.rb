# Variaciones en el tiempo

def sleep_and_update(t)
  sleep t
  $temp_bar -= t
end

def last_sleep()
  sleep $temp_bar
end

def play_if_sound()
  if $sound
    sample :bd_tek
  end
end



unit = 1
#unit = 0.5
units =  ring(unit)
units = ([unit] * 3 + (0..20).collect { |x| unit - 0.01 * x }.to_a).ring

last_delay = -0.00
bar_count = 4

$sound = true
#$sound = false

live_loop :b2 do
  use_bpm 140
  
  my_unit = units.tick
  puts my_unit
  
  $bar = my_unit * bar_count
  
  $temp_bar = $bar
  
  play_if_sound()
  sleep_and_update(my_unit / 2.0)
  play_if_sound()
  sleep_and_update(my_unit)
  (bar_count - 3).times do
    play_if_sound()
    sleep_and_update(my_unit)
  end
  play_if_sound()
  sleep_and_update(my_unit + last_delay)
  play_if_sound()
  last_sleep()
end