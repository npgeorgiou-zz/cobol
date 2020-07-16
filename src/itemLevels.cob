identification division.
  program-id. hello.
  author.  "lala lala".
environment division.
data division.
  working-storage section.
  local-storage section.
    1 foo1 pic a(10).
      88 zeroIf value 0.
      88 tinyIf value 1, 2.
      88 smallIf value 1 through 100.
    1 foo3 redefines foo1 pic a(10).
    1 foo4 redefines foo1 pic a(10).
    1 foo2.
      2 foo21 pic a(10).
      2 foo22 pic a(10).
      2 foo23 pic a(10).
    66 foo5 renames foo21 through foo22.
    77 foo6 pic a(10).

    *> Errors.

    *> Duplicate names
    1 bar1.
      2 bar21 pic a(10).
      2 bar22 pic a(10).
    1 bar1.
      2 bar21 pic a(10).
      2 bar22 pic a(10).

    *> Redefines
    1 bar2 pic a(10).
    1 bar3 pic a(10).
    1 bar4 redefines bar2 pic a(10).
    1 bar5 redefines bar4 pic a(10).

    *> 77
    1 bar6.
      77 bar7 pic a(10).
      2 bar8 pic a(10).

    *> Renames
    1 bar9.
      2 bar91 pic a(10).
      2 bar92 pic a(10).
    66 fgsdfsd renames bar91 through bar91.
    66 bar10 renames foo21 through foo22. *> TODO: Make an error for "rename must follow record foo2"
procedure division.

end program hello.

*> TODO: change wrong types to an Annotator error instead of inspection warning, since they dont compile.
