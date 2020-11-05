*"* use this source file for your ABAP unit test classes

class mytest definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      first_test for testing raising cx_static_check.

    methods:
      second_test for testing raising cx_static_check.

endclass.


class mytest implementation.

  method first_test.

    DATA mo_cut TYPE REF TO zcl_example.
    create OBJECT mo_cut.

    mo_cut->first_monster( ).
    "cl_abap_unit_assert=>fail( 'Implement your first test here!' ).


  endmethod.

  method second_test.

    DATA mo_cut TYPE REF TO zcl_example.
    create OBJECT mo_cut.

    mo_cut->second_monster( ).

  endmethod.


endclass.
