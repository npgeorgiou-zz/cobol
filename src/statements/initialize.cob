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
procedure division.
  initialize foo.
  initialize foo replacing alphabetic by bar1.
  initialize bar replacing alphabetic by 1, alphanumeric by bar2.
end program foo.
