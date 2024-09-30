CLASS z2ui5_cl_app_test_unit_AllTests_js DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS z2ui5_cl_app_test_unit_AllTests_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"z2ui5/test/unit/controller/View1.controller"` && |\n|  &&
             `], function () {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.