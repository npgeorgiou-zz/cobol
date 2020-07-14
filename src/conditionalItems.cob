identification division.
  program-id. hello.
  author.  "lala lala".
environment division.
data division.
  working-storage section.
  local-storage section.
    1 sex pic is 9(5) value zero.
      88 MALE value 1.
      88 FEMALE value 2.
      88 BOTH value 1, 2.
      88 GENDER_FLUID value 1 through 10.
procedure division.
  display sex.
  set BOTH to true .
  display sex.

  if MALE
    display "MALE"
  end-if.


end program hello.

*> TODO: Change CobolRenamesItemDecl_|CobolGroupItemDecl_|CobolConditionalItemDecl_ to same class with is* methods.
*> TODO: commas in lists inspetiosn are repetitive.
*> TODO: Initial valus size checks for ALL literals.
