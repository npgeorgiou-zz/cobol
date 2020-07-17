identification division.
  program-id. hello.
  author.  "lala lala".
environment division.
data division.
  working-storage section.
  local-storage section.
    1 foo pic is 9(5) value 1.
    1 person pic is 9(5) value 1.
     88 MALE value 1.
     88 FEMALE value 10, 3, 4.
     88 BOTH value "A" through 10.
procedure division.



end program hello.
*> TODO: Change CobolRenamesItemDecl_|CobolGroupItemDecl_|CobolConditionalItemDecl_ to same class with is* methods.
*> TODO: commas in lists inspections are repetitive.

*>copy 'statements/math.cob'.
