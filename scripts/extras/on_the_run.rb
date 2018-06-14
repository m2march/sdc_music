# On the run loop
co = [70, 80, 90, 100, 110, 120, 110, 100, 90, 80].ring

live_loop :on_the_run do
  _co  = co.tick
  cue :sync1
  with_bpm 750 do
    with_octave -1 do
      with_synth :square do
        with_synth_defaults sustain: 0.8, decay: 0.5, cutoff: _co do
          with_fx :reverb, mix: 0.4 do
            play :e4
            sleep 1
            play :g4
            sleep 1
            play :a4
            sleep 1
            play :g4
            sleep 1
            play :d5
            sleep 1
            play :c5
            sleep 1
            play :d5
            sleep 1
            play :e5
            sleep 1
          end
        end
      end
    end
  end
end