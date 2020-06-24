identification division.
  program-id. hello.
environment division.
data division.
  working-storage section.
*>    01 foo1 pic is 9(3) value is 000120.
*>    01 foo2 pic is 9(3) value is 456.
*>    01 foo2 pic is 9(3)v9(3) value is 00111.00000.
    01 foo1 pic is 9(2)v9(1) value is 1.1.
    01 foo2 pic is 9(2)v9(1) value is 1.1.
    01 bar1.
      02 ooo pic is 9(1)v9(1) value is 1.1.
      02 bar22.
        03 rrr pic is 9(1)v9(1) value is 1.1.
    01 baz1.
      02 aaa pic is 9(1)v9(1) value is 1.1.
      02 baz22.
        03 iii pic is 9(1)v9(1) value is 1.1.

  local-storage section.
procedure division.

  add corresponding baz22 of baz1 to bar1.
  add corresponding baz1 to baz1
  add corresponding iii to baz1
  add corresponding baz1 to baz1

  add foo1 to foo1 baz1.
  add foo2 foo2 3 to foo1 foo2.
  add foo1 foo2 3 giving foo1 foo2.
  add foo1 1 iii of baz22 to foo1 giving foo2 foo1.
  add foo2 foo1 2 4 to foo1 giving foo1.

  add baz1 to baz1 giving baz1 baz1.



end program hello.




*> TODO Create errors for adding corr not groups.
*> TODO Create errors for adding not numeric values.
*> TODO: Create only group items Completion Provider.
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

