identification division.
  program-id. foo.
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
  *> Conditional item.
  if MALE display "true" end-if.
  if not MALE display "true" end-if.

  *> Type.
  if person numeric display "true" end-if.
  if person not alphabetic display "true" end-if.

  *> Sign.
  if person positive display "true" end-if.
  if (1 + +1) not negative display "true" end-if.
  if 1 zero display "true" end-if.

  *> Comparison.
  if person equal 0 display "true" end-if.
  if person greater 0 display "true" end-if.
  if person less 0 display "true" end-if.
  if person not greater or equal 0 display "true" end-if.
  if person not equal to 0 display "true" end-if.

  *> A composte condition.
  if(
    not MALE and person numeric
    or (1 + +1) not negative and (foo less or equal 1 - 1 * (3**7))
  )
    display "true"
  end-if.

  *> An if-else
  if MALE                          display "E", 1
  if (1 + 1) is positive           display "E", 1
  else if person is equal to zeros display "E"
  else if person is alphabetic     display "E"
  else                             display "E"
  end-if.

  *> Change to symbols inspections.
  if 1 + foo equals 1 * 1 + (1/1 - 1) display "true" end-if.
  if 1 + foo greater 1 * 1 + (1/1 - 1) display "true" end-if.
  if 1 + foo less 1 * 1 + (1/1 - 1) display "true" end-if.
  if 1 + foo not greater or equal 1 * 1 + (1/1 - 1) display "true" end-if.
  if 1 + foo not less or equal 1 * 1 + (1/1 - 1) display "true" end-if.

  *> Redundant keywords.
  if person is greater than or equal to 0 then display "true" end-if.

  *> Errors.
  if not (not person) display "true" end-if.


end program foo.

*> TODO: Autompletion.
