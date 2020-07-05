# cobol

# to notify GNU team:
* 01 foo pic a(2) value '"'   gives warning while 01 foo pic a(2) value quotes doesn't.
* 01 foo pic a(2) value zero gives error    while  01 foo1 pic a(2) value 0 gives warning.
* 01 foo pic 9(2) value all 2 gives error   while add all 2 to foo doesn't.
* 01 foo pic 9(2)v9(2) value all 11 gives error, while 01 foo pic 9(2)v9(2) value all '11'  doesn't. 
*   1 boo.
      2 boo2 pic 9(2)v9(5) value all '#'.
      
        display boo.  *> ######
        display boo2. *> ##.00000


