# ===== CODE =====
Parse ← ⊜(□⊜□⊸≠@\s)⊸≠@\n # Sep by \n, then \s

Part₁ ← (
  Parse
  ⍚(/×◰) # Valid?
  °□/+   # How many
)

Part₂ ← (
  Parse
  ⍚⍚(⊏⊸⍏) # Make anagrams equal
  ⍚(/×◰)  # Valid?
  °□/+    # How many
)

# ===== TESTS =====
⍤⟜≍: 1 Part₁"aa bb cc dd ee"
⍤⟜≍: 0 Part₁"aa bb cc dd aa"
⍤⟜≍: 1 Part₁"aa bb cc dd aaa"

⍤⟜≍: 1 Part₂"abcde fghij"
⍤⟜≍: 0 Part₂"abcde xyz ecdab"
⍤⟜≍: 1 Part₂"a ab abc abd abf abj"
⍤⟜≍: 1 Part₂"iiii oiii ooii oooi oooo"
⍤⟜≍: 0 Part₂"oiii ioii iioi iiio"

# ===== EXECUTION =====
↘¯1 &fras "input"
⊃($"P2: _"Part₂|$"P1: _"Part₁)
