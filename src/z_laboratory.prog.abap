*&---------------------------------------------------------------------*
*& Report z_laboratory
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_laboratory.

CLASS lcl_how_many_monsters DEFINITION.

    PUBLIC SECTION.
    METHODS: how_many_make_five RETURNING VALUE(rd_how_many) TYPE i.

ENDCLASS.

CLASS lcl_how_many_monsters IMPLEMENTATION.

  METHOD how_many_make_five.

   select count( * ) from sflight
     where carrid = 'AA'.

    check sy-subrc = 0.

    DO 100 TIMES.


         add 1 to rd_how_many.

    ENDDO.
  ENDMETHOD.

ENDCLASS.

DATA: how_many TYPE i,
      counter TYPE REF TO lcl_how_many_monsters.

START-OF-SELECTION.

CREATE OBJECT counter.
how_many = counter->how_many_make_five(  ).
WRITE:/ how_many.
