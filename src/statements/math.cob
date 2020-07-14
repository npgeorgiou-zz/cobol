identification division.
  program-id. math.
environment division.
data division.
  working-storage section.
    01 foo1 pic is s9(3) value is 8.
    01 foo2 pic is s9(3) value is 8.
    01 foo3 pic is s9(3)v9(3) value is 8.
    01 bar1.
      02 bar12 pic is 9(1)v9(1) value is 1.1.
      02 bar22.
        03 bar221 pic is 9(1)v9(1) value is 1.1.
    01 baz1.
      02 baz12 pic is 9(1)v9(1) value is 1.1.
      02 baz22.
    03 qux1 pic is a(1) value is "s".
    03 qux2 pic is x(1) value is "1".
  local-storage section.
procedure division.
  add foo1 to foo1.
  add 1 bar221 of bar22 to foo1 foo2.
  add 1 1.1 foo1 to foo1 giving foo2 foo1.
  add corresponding baz22 to bar1.
*>  add qux1 to foo1 giving foo2.
*>  add corresponding foo1 to bar1.

  subtract foo2 from foo2.
  subtract 1 bar221 of bar22 from foo1 foo2.
  subtract 1 1.1 foo2 from foo1 giving foo1 foo1.
  subtract corresponding baz22 from bar1.
*>  subtract qux1 from foo1 giving foo1.
*>  subtract corresponding foo1 from bar1.

  multiply foo1 by foo2 foo1.
  multiply 2 by foo2 giving foo1 foo1.
*>  multiply foo1 by qux1 foo1.

  divide 2.2 into foo2.
  divide foo1 into foo1 foo1.
  divide bar221 of bar22  into foo2 giving foo1 foo1.
  divide 2 into foo1 giving foo2 remainder foo1.
  divide foo1 by 2 giving foo1.
  divide 2.2 by foo1 giving foo1 foo2.
  *> TODO: after giving foo, there should be no more items autocompletion.
  divide 17 by foo1 giving bar221 remainder foo2.
*>  divide 2.2 into qux1.

end program math.
