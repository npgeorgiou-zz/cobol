identification division.
  program-id. hello.
  author.  "lala lala".
environment division.
data division.
  working-storage section.
  local-storage section.
    *> Types.
    01 foo1 pic a(10) value zero.             *> Shows
    01 foo2 pic a(10) value spaces.
    01 foo3 pic a(10) value quotes.           *> Shows
    01 foo4 pic a(10) value high-value.
    01 foo5 pic a(10) value low-value.
    01 foo6 pic a(10) value null.
    01 foo7 pic a(10) value all zero.         *> Shows
    01 foo8 pic a(10) value all "foo".
    01 foo9 pic a(10) value "foo".
    01 foo10 pic a(10) value 1.               *> Shows
    01 foo11 pic a(10) value '1.1'.           *> Shows
    01 foo112 pic a(10) value 1.1.            *> Shows

    01 bar1 pic x(10) value zero.
    01 bar2 pic x(10) value spaces.
    01 bar3 pic x(10) value quotes.
    01 bar4 pic x(10) value high-value.
    01 bar5 pic x(10) value low-value.
    01 bar6 pic x(10) value null.
    01 bar7 pic x(10) value all zero.
    01 bar8 pic x(10) value all "foo".
    01 bar9 pic x(10) value "foo".
    01 bar10 pic x(10) value 1.               *> Shows
    01 bar11 pic x(10) value 1.1.             *> Shows
    01 bar12 pic x(10) value '1.1'.

    01 baz1 pic 9(10) value zero.
    01 baz2 pic 9(10) value spaces.           *> Shows
    01 baz3 pic 9(10) value quotes.           *> Shows
    01 baz4 pic 9(10) value high-value.       *> Shows
    01 baz5 pic 9(10) value low-value.        *> Shows
    01 baz6 pic 9(10) value null.
    01 baz7 pic 9(10) value all zero.
    01 baz8 pic 9(10) value all "foo".        *> Shows
    01 baz9 pic 9(10) value "foo".            *> Shows
    01 baz10 pic 9(10) value 1.
    01 baz11 pic 9(10) value 1.1.             *> Shows
    01 baz12 pic 9(10) value '1.1'.           *> Shows

    01 qux1 pic 9(10)v9(2) value zero.
    01 qux2 pic 9(10)v9(2) value spaces.      *> Shows
    01 qux3 pic 9(10)v9(2) value quotes.      *> Shows
    01 qux4 pic 9(10)v9(2) value high-value.  *> Shows
    01 qux5 pic 9(10)v9(2) value low-value.   *> Shows
    01 qux6 pic 9(10)v9(2) value null.
    01 qux7 pic 9(10)v9(2) value all zero.
    01 qux8 pic 9(10)v9(2) value all "foo".   *> Shows
    01 qux9 pic 9(10)v9(2) value "foo".       *> Shows
    01 qux10 pic 9(10)v9(2) value 1.          *> Shows
    01 qux11 pic 9(10)v9(2) value 1.1.
    01 qux12 pic 9(10)v9(2) value '1.1'.      *> Shows

    *> Sizes.
    01 sizeCheck1 pic a(2) value spaces.
    01 sizeCheck2 pic x(2) value zero.
    01 sizeCheck3 pic 9(2) value zero.
    01 sizeCheck4 pic 9(2)v9(2) value zero.
    01 sizeCheck5 pic a(2) value all spaces.
    01 sizeCheck6 pic x(2) value all "aaa".   *> Shows
    01 sizeCheck8 pic a(2) value "aaa".       *> Shows
    01 sizeCheck9 pic x(2) value "a11".       *> Shows
    01 sizeCheck10 pic 9(2) value 111.        *> Shows
procedure division.

end program hello.

*> TODO: change wrong types to an Annotator error instead of inspection warning, since they dont compile.
