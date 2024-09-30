CLASS z2ui5_cl_app_test_integration_opaTests_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_opaTests_js IMPLEMENTATION.

  METHOD get.

    result =              `/* global QUnit */` && |\n|  &&
             `` && |\n|  &&
             `sap.ui.require(["z2ui5/test/integration/AllJourneys"` && |\n|  &&
             `], function () {` && |\n|  &&
             `	QUnit.config.autostart = false;` && |\n|  &&
             `	QUnit.start();` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.