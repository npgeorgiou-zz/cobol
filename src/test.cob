identification division.
  program-id. foo.
environment division.
data division.
  working-storage section.
  local-storage section.
    1 boo.
      2 boo2 pic a(3) value 000.
procedure division.
  display boo.
  display boo2.
end program foo.
