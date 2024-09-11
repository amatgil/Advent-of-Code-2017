# ===== CODE =====
Parse ← (
  ⊜□≠@\n.      # 1D, through newlines
  ≡⍚(⊜⋕ ⊸≠@\t) # Split lines per tab and box
)

Part₁ ← (
  Parse
  ≡◇⊃/↥/↧ # Max and min of line
  /+⌵-    # Differences and tally
)

Part₂ ← (
  Parse
  ≡◇(
    ⊚=0⊸⊞◿. # Where evenly divisible?
    ≡/≠.    # Remove where x evenly divs itself
    °¤▽     # Get indices
    /÷⊏     # Pull out and divide 
  )
  /+ # Sum 
)

# ===== TESTS =====
$ 5	1	9	5
$ 7	5	3
$ 2	4	6	8
$ 
⍤⟜≍: 18 Part₁

$ 5	9	2	8
$ 9	4	7	3
$ 3	8	6	5
⍤⟜≍: 9 Part₂

# ===== RUNNING =====
↘¯1 &fras "input"
⊃(
  $"Part 2: _" Part₂
| $"Part 1: _" Part₁
)
