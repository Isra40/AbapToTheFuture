CLASS zcl_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.


    METHODS first_monster.
    METHODS second_monster.


ENDCLASS.

CLASS zcl_example IMPLEMENTATION.


  METHOD first_monster.
    WRITE:/ 'I am the first monster'.
  ENDMETHOD.

  METHOD second_monster.
    WRITE:/ 'I am the second monster'.
  ENDMETHOD.

ENDCLASS.
