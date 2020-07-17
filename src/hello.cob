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
  *> TODO: annotate as error: invalid comparison
  evaluate MALE
    when true display "ok"
    when any display "ok"
    *> Errors
    when 1 > 2 display "ok"
    when is positive display "ok"
    when 1 display "ok"
  end-evaluate.

  evaluate true
    when MALE display "ok"
    when 1 > 3 display "ok"
    when false display "ok"
    *> Errors
    when is positive display "ok"
    when is numeric display "ok"
    when 1 through 2 display "ok"
    when 1 display "ok"
  end-evaluate.

  evaluate 10 > 0
    when 10 > 2 display "ok"
    when false display "ok"
    *> Errors
    when MALE display "ok"
    when is positive display "ok"
    when is numeric display "ok"
    when 1 through 2 display "ok"
    when zero display "ok"
  end-evaluate.

  evaluate (10 + 3)
    when positive display "ok"
    when is positive display "ok"
    when >= 12 display "ok"
    when is numeric display "ok"
    when 1 through 2 display "ok"
    when "sasa" display "ok"
    when any display "ok"
    *> Errors
    when MALE display "ok"
    when 10 > 2 display "ok"
    when false display "ok"
  end-evaluate.


 *> All these should be OK.
  evaluate "sda" alphabetic
    when true
      display "oasdadsadsak"
    when other
      display "other"
  end-evaluate.

  evaluate foo also "a"
    when is numeric also is alphabetic
      display "ok"
    when not zero also not 3 through 25
    when not= 1 also not 3 through 25
    when = 1 also not 3 through 25
    when equals to 1 also not 3 through 25
      display "ok"
    when other
      display "other"
  end-evaluate.

  evaluate quote also (1 + +2) ** (6 - 6)/2
    when   quote also > 0
      display "ok"
    when any also any
      display "any"
    when other
      display "other"
  end-evaluate.

  evaluate true
    when "r" is alphabetic
      display "ok"
  end-evaluate.

  evaluate true also false also MALE also foo alphabetic
    when true also false also true also false
      display "ok"
    when true also false also true also false
      display "ok"
    when other
      display "other"
  end-evaluate.

end program hello.
*> TODO: Change CobolRenamesItemDecl_|CobolGroupItemDecl_|CobolConditionalItemDecl_ to same class with is* methods.
*> TODO: commas in lists inspections are repetitive.

*>copy 'statements/math.cob'.
