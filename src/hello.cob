*>identification division.
*>  program-id. hello.
*>  author.  "lala lala".
*>environment division.
*>data division.
*>  working-storage section.
*>  local-storage section.
*>    1 person pic is 9(5) value zero.
*>*>      2 person2 pic is a(5) value "A".
*>*>      2 person3 pic is a(5) value "A".
*>*>    66 person4 renames person2 thru person3.
*>     88 MALE value 1.
*>     88 FEMALE value 10.
*>     88 BOTH value 1 through 10.
*>procedure division.
*>
*>
*>  display person"end".
*>  set BOTH to true .
*>  display person"end".
*>
*>
*>
*>end program hello.
*>
*>*> TODO: Change CobolRenamesItemDecl_|CobolGroupItemDecl_|CobolConditionalItemDecl_ to same class with is* methods.
*>*> TODO: commas in lists inspections are repetitive.
*>

copy 'itemLevels.cob'.
