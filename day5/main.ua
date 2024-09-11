# Experimental!

# ===== CODE =====
Part₁ ← (
  ⊜⋕⊸≠@\n # Split on newline
  0⊙0
  ⍢(
    +⟜⊃(⊏|⍜⊏(+1)) # Go to next, inc curr
    ⊙⊙(+1)        # Inc step count
  | >◡⊃(⊙◌|⋅⧻)    # Are we outside
  )
  ◌◌ # Keep only step count
)

Part₂ ← (
  ⊜⋕⊸≠@\n # Split on newline
  0⊙0
  ⍢(
    +⟜⊃(
      ⊏
    | ⍜⊏+ ⊃(⋅⊙∘|⊙⋅◌) ⨬(1|¯1)≥3 ◡⊏
    )
    ⊙⊙(+1)     # Inc step count
  | >◡⊃(⊙◌|⋅⧻) # Are we outside
  )
  ◌◌ # Keep only step count
)

# ===== TESTS =====
$ 0
$ 3
$ 0
$ 1
$ -3
$ 
Part₁
⍤⟜≍: 5
$ 0
$ 3
$ 0
$ 1
$ -3
$ 
Part₂
⍤⟜≍: 10

# ===== RUNNING =====

↘¯1 &fras "input"
⊃(
  $"P1: _ (took _s)" : ⍜nowPart₁
| $"P2: _ (took _s)" : ⍜nowPart₂
)
