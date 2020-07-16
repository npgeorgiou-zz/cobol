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
  display person.
  set MALE of person to true .
*>  if person then
*>    display "####"
*>  end-if.

  if MALE display "####" end-if.

  if person is not positive
    display 'yey'
  end-if.

  if (
    person is not positive or person is not positive
    or MALE
    or not not (not (person is numeric and (1 = 1 and 1 not=6)))
  )
    display 'yey'
    if MALE display "####" end-if

  end-if.

  *> Condition
  *> Type
  *> Sign
  *> Comparison
  if "1" = 1 display "QQQ" end-if.
*>  if "1" not= 1 display "QQQ" end-if.
  if 1 + foo is equal 1 * 1 + (1/1 - 1) display "JJJ" end-if.
  if foo is equal 1 * 1 + (1/1 - 1) display "JJJ" end-if.
  if 1 is equal to 1 * 1 + (1/1 - 1) display "JJJ" end-if.

*>  if not MALE display "####" end-if.
  if MALE display "####" end-if.
  if (MALE) display "####" end-if.
  if ((MALE)) display "####" end-if.
  if not not not not MALE display "####" end-if.
  if not (MALE) display "####" end-if.
  if (not (MALE)) display "####" end-if.

  if person not numeric display "####" end-if.
  if person is not numeric display "####" end-if.

  if person is positive display "####" end-if.
  if person is negative display "#" end-if.
  if (person is zero) display "#eeeeeeeeeeee" end-if.

  if 1 + +1 is positive then display "#" end-if.
  if person positive then display "#" end-if.
  if person positive then display "#" else display "#" end-if.
  if person positive then display "#" else if person negative then display "#" end-if.
  if person positive then display "#" else if person negative then display "#" end-if.
  if person positive display "#" end-if.
  if person is not positive display "#" end-if.
  if person not positive display "#" end-if.

  if person equal to 0 display "#" end-if.
  if person greater than 0 display "#" end-if.
  if person less than 0 display "#" end-if.
  if person greater than or equal to 0 display "#" end-if.
  if person greater or equal 0 display "#" end-if.
  if person greater or equal 0 display "#" end-if.
  if person less than or equal to 0 display "#" end-if.

  if person is equal 0 display "#" end-if.
  if person is not equal to 0 display "#" end-if.
  if person is not equal 0 display "#" end-if.
  if person not equal to 0 display "#" end-if.
  if person not equal 0 display "#" end-if.
  if person less 0 display "#" end-if.

  if person = 0 display "#" end-if.
  if person > 0 display "#" end-if.
  if person < 0 display "#" end-if.
  if person >= 0 display "#" end-if.
  if person <= 0 display "#" end-if.

  if person is = 0 display "#" end-if.
  if person is not = 0 display "#" end-if.
  if person not = 0 display "#" end-if.

  *> TODO: Categorize if forms.
  *> TODO: Autompletion.

   if 1 + 1 is positive        then display "E", 1
   if (1 + 1) is positive      then display "E", 1
   if foo is positive          then display "E", 1
   if foo is not positive      then display "E", 1
   else if person negative     then display "E"
   else if person not negative then display "E"
   else if person is equal to zeros then display "E"
   else if person not equal 0   then display "E"
   else if person is equal to 1 + 1           then display "E"
   else if person not equal 1 * 1 + (1/1 - 1) then display "E"
   else if person is zero      then display "E"
   else                         display "E"
   end-if.

   if foo greater than 1 - 1 * (3**7) display "E" end-if.
   if foo is positive and foo is not positive or (foo less or equal 1 - 1 * (3**7)) display "E" end-if.

end program hello.

*> TODO: Change CobolRenamesItemDecl_|CobolGroupItemDecl_|CobolConditionalItemDecl_ to same class with is* methods.
*> TODO: commas in lists inspections are repetitive.

*>copy 'statements/math.cob'.
