# Welcome to Sonic Pi v3.1

# Codebop Track Tennis
# Track 2

# Some chords in C Major
chords = [
  chord(:C, :major),
  chord(:F, :major),
  chord(:G, :dom7)
]

live_loop :arpeggios do
  use_synth :pluck
  # Every 4th loop, return to the root chord, C Major
  if tick % 4 == 0 then
    chord_to_play = chords[0].take(4)
  else
    chord_to_play = choose(chords).take(4)
  end
  
  play_pattern_timed chord_to_play, 0.25
end
