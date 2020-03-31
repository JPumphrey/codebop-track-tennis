# Welcome to Sonic Pi v3.1

# Codebop Track Tennis
# Track 1

bits = [16, 8, 4, 2].ring

live_loop :drums do
  with_fx :bitcrusher, bits: bits.tick do
    sample :loop_amen
    sleep sample_duration :loop_amen
  end
end
