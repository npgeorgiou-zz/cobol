identification division.
  program-id. foo.
environment division.
data division.
  working-storage section.
  local-storage section.
    1 foo pic 9(5) value 1.
    1 bar.
      2 bar1 pic 9(5) value 1.
      2 bar2 pic 9(5) value 1.
      88 bar3 value 1.
procedure division.
  move bar1 to bar2.
  move corresponding bar to bar.
end program foo.
