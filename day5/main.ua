# Experimental!

# ===== CODE =====
Part₁ ← (
  ⊜⋕⊸≠@\n # Split on newline
  0⊙0
  ⍢(
    +⟜⊃(⊏|⍜⊏(+1)) # Go to next, inc curr
    ⊙⊙(+1)        # Inc step count
  | >◡⊃⊙◌⋅⧻       # Are we outside
  )
  ◌◌ # Keep only step count
)

Part₂ ← (
  ⊜⋕⊸≠@\n # Split on newline
  0⊙0
  ⍢(
    +⟜⊃(⊏|⍜⊏+ ⊃⋅⊙∘∘ ⨬(1|¯1)≥3 ◡⊏)
    ⊙⊙(+1)     # Inc step count
  | >◡⊃(⊙◌|⋅⧻) # Are we outside
  )
  ◌◌ # Keep only step count
)

# ===== TESTS =====
⍤⟜≍: 5 Part₁ "0\n3\n0\n1\n-3\n"
⍤⟜≍: 10 Part₂ "0\n3\n0\n1\n-3\n"

# ===== RUNNING =====

↘¯1 &fras "input"
⊃(
  $"P1: _ (took _s)" : ⍜nowPart₁
| $"P2: _ (took _s)" : ⍜nowPart₂
)
