identification division.
  program-id. hello.
  author.  "lala lala".
environment division.
data division.
  working-storage section.
  local-storage section.
    77 person pic is a(5).
     88 MALE value 'M'.
     88 FEMALE value 'F'.
     88 BOTH value 'M', 'F'.
procedure division.
  display person"end".
  set BOTH to TRUE.
  set BOTH of person to TRUE.
  display person"end".

  if MALE
   display person"end"
  end-if.


end program hello.

*> TODO: Initial valus size checks for ALL literals.
*> TODO: chang wrong types
