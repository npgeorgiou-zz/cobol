identification division.
  program-id. foo.
environment division.
data division.
  working-storage section.
  local-storage section.
  linkage section.
    1 foo pic a(3) value 1.
procedure division using foo.
  display foo.
  display foo.
  display foo.
  display foo.
  display foo.
end program foo.
