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
  1 boo.
    2 boo1 pic a(2) value all 'a'.
    2 boo2 pic 9(2) value all '8'.
procedure division.
*>  display person"end".
*>  set BOTH to TRUE.
*>  set BOTH of person to TRUE.
*>  display person"end".
*>
*>  if MALE
*>   display person"end"
*>  end-if.


*>  display boo.
*>
*>  initialize boo.
*>  display boo.
*>
*>  move all 't' to boo.
*>  display boo.

  add zero 1 to boo2.
  display boo2.

end program hello.

*> TODO: Initial valus size checks for ALL literals.
*> TODO: chang wrong types
