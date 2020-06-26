identification division.
  program-id. hello.
environment division.
data division.
  working-storage section.
    01 foo1 pic is s9(3) value is 8.
    01 foo2 pic is s9(3) value is 8.
    01 foo3 pic is s9(3)v9(3) value is 8.
    01 bar1.
      02 ooo pic is 9(1)v9(1) value is 1.1.
      02 bar22.
        03 rrr pic is 9(1)v9(1) value is 1.1.
    01 baz1.
      02 aaa pic is 9(1)v9(1) value is 1.1.
      02 baz22.
        03 iii pic is 9(1) value is 5.
    01 qux1.
      02 qux11 pic is a(1) value is "s".
    01 qux2.
      02 qux22.
        03 qux222 pic is 9(1) value is "s".
  local-storage section.
procedure division.


  move foo1 to foo1 foo1.


  divide 12 into ooo of bar1 giving foo1 remainder foo1.

  divide foo1 into foo1 foo1
  divide foo1 into foo2 .
  divide 2 into foo2.
  divide foo1 into foo2 foo3 .
  divide foo1 into foo2 giving foo1.
  divide foo1 into foo2 giving foo1 .
  divide 2 into foo1 giving foo2 remainder foo1 .
  divide qux222 of qux22 into foo1 giving qux222 qux222.


  divide foo1 by foo1 giving foo1.
  divide foo1 by 16 giving foo1.
  divide 16 by foo1 giving foo1 foo2 .
  divide 17 by foo1 giving foo1 remainder foo2.
  divide foo1 by foo1 giving foo1 foo1 foo1.


  divide 1 by 4 giving foo1 remainder foo1  .

  display foo1.
  display foo2.
  display foo3.
end program hello.



*> TODO Create BY syntax for divide.
*> TODO Create one file per math operation, listing all its formats.
*> TODO: Items can have same name if they have different parents.
*> TODO: Create classes to group Patterns there.
*> TODO: After suporting ADD SUBTRACT MULTIPLY DIVIDE COMPUTE, create inspection that turns idiotic operations into COMPUTEs.
*> TODO: Start writing abt it.



















*>copy 'foo/bar'.
*>
*>@author lala lala.
*>@static foo int[3] <- 1.
*>program hello {
*>   foo <- 8.
*>   foo <- 8.
*>   display 'foo is: %foo and I am happy'.
*>
*>
*>   baz int[5] <- accept().
*>   baz <- foo + bar.
*>
*>   hello2(baz).
*>
*>   program hello2(arg int[5]) {
*>      display arg.
*>   }
*>}

