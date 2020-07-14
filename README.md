# cobol

# to notify GNU team:
* 
  - 01 foo pic a(2) value '"'   gives warning
  - 01 foo pic a(2) value quotes doesn't.
* 
  - 01 foo pic a(2) value zero gives error
  - 01 foo1 pic a(2) value 0 gives warning.
* 
  - 01 foo pic 9(2) value all 2 gives error
  - add all 2 to foo doesn't.
  - 01 foo pic 9(2) value 22 doesn't.
* 
  - 01 foo pic 9(2)v9(2) value all 11 gives error
  - 01 foo pic 9(2)v9(2) value all '11'  doesn't. 
*   1 boo.
      2 boo2 pic 9(2)v9(2) value all '#'.
      
        display boo.  *> ####
        display boo2. *> ##.00
* 
  - if person is equal to 0 display "#"       *> Compiles.
  - if person is equal to to 0 display "#"    *> Compiles!
  - if person is equal to to to 0 display "#" *> Compilation error
  


